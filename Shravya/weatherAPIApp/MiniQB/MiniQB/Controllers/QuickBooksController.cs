using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using System.Data.SqlClient;

namespace MiniQB.Controllers
{
    public class QuickBooksController : Controller
    {
      

public ActionResult Connect()
    {
        string clientId = ConfigurationManager.AppSettings["QBClientId"];
        string redirectUri = ConfigurationManager.AppSettings["QBRedirectUri"];

        string url = "https://appcenter.intuit.com/connect/oauth2" +
                     "?client_id=" + clientId +
                     "&scope=com.intuit.quickbooks.accounting" +
                     "&redirect_uri=" + redirectUri +
                     "&response_type=code";

        return Redirect(url);
    }


public async Task<ActionResult> Callback(string code, string realmId)
    {
        string clientId = ConfigurationManager.AppSettings["QBClientId"];
        string clientSecret = ConfigurationManager.AppSettings["QBClientSecret"];
        string redirectUri = ConfigurationManager.AppSettings["QBRedirectUri"];

        var client = new HttpClient();

        var request = new HttpRequestMessage(HttpMethod.Post,
            "https://oauth.platform.intuit.com/oauth2/v1/tokens/bearer");

        var authString = Convert.ToBase64String(
            Encoding.UTF8.GetBytes(clientId + ":" + clientSecret));

        request.Headers.Authorization =
            new AuthenticationHeaderValue("Basic", authString);

        request.Content = new FormUrlEncodedContent(new[]
        {
        new KeyValuePair<string,string>("grant_type","authorization_code"),
        new KeyValuePair<string,string>("code",code),
        new KeyValuePair<string,string>("redirect_uri",redirectUri)
    });

        var response = await client.SendAsync(request);
        var content = await response.Content.ReadAsStringAsync();

        dynamic tokenData = JsonConvert.DeserializeObject(content);

        string accessToken = tokenData.access_token;
        string refreshToken = tokenData.refresh_token;

        SaveToDatabase(accessToken, refreshToken, realmId);

        return Content("Connected and Tokens Saved to Database!");
    }

        private void SaveToDatabase(string accessToken, string refreshToken, string realmId)
        {
            string connectionString =
    ConfigurationManager.ConnectionStrings["MiniQBDB"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query = @"INSERT INTO Company 
                         (AccessToken, RefreshToken, RealmId)
                         VALUES
                         (@AccessToken, @RefreshToken, @RealmId)";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@AccessToken", accessToken);
                    cmd.Parameters.AddWithValue("@RefreshToken", refreshToken);
                    cmd.Parameters.AddWithValue("@RealmId", realmId);

                    cmd.ExecuteNonQuery();
                }
            }
        }

        public async Task<ActionResult> SyncCustomers()
        {
            string connectionString =
                ConfigurationManager.ConnectionStrings["MiniQBDB"].ConnectionString;

            string accessToken = "";
            string realmId = "";

            // 1️⃣ Read token from DB
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query = "SELECT TOP 1 AccessToken, RealmId FROM Company";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        accessToken = reader["AccessToken"].ToString();
                        realmId = reader["RealmId"].ToString();
                    }
                }
            }

            // 2️⃣ Call QuickBooks API
            var client = new HttpClient();
            client.DefaultRequestHeaders.Authorization =
                new AuthenticationHeaderValue("Bearer", accessToken);
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));

            string url = $"https://sandbox-quickbooks.api.intuit.com/v3/company/{realmId}/query?query=select * from Customer";

            var response = await client.GetAsync(url);
            var content = await response.Content.ReadAsStringAsync();

            // 3️⃣ Parse JSON
            dynamic data = JsonConvert.DeserializeObject(content);
            var customers = data.QueryResponse.Customer;

            // 4️⃣ Insert into DB
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                foreach (var c in customers)
                {
                    string insertQuery = @"
                IF NOT EXISTS (SELECT 1 FROM Customers WHERE QBId=@QBId)
                INSERT INTO Customers (QBId, DisplayName, Balance, Active, SyncToken)
                VALUES (@QBId, @DisplayName, @Balance, @Active, @SyncToken)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@QBId", c.Id.ToString());
                        cmd.Parameters.AddWithValue("@DisplayName", c.DisplayName.ToString());
                        cmd.Parameters.AddWithValue("@Balance", (decimal)c.Balance);
                        cmd.Parameters.AddWithValue("@Active", (bool)c.Active);
                        cmd.Parameters.AddWithValue("@SyncToken", (int)c.SyncToken);

                        cmd.ExecuteNonQuery();
                    }
                }
            }

            return Content("Customers Synced Successfully!");
        }
    }
}