using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.Http;


namespace WeatherAPIProject.Controllers
{
    public class WeatherController : ApiController
    {

        private readonly string apiKey = "5abffe83c72a86b3c5bc61c688c16235";

        [HttpGet]
        [Route("api/weather/{city}")]
        public async Task<IHttpActionResult> GetWeather(string city)
        {
            using (HttpClient client = new HttpClient())
            {
                string url = $"https://api.openweathermap.org/data/2.5/weather?q={city}&appid={apiKey}&units=metric";

                HttpResponseMessage response = await client.GetAsync(url);
                var result = await response.Content.ReadAsStringAsync();
                var json = Newtonsoft.Json.JsonConvert.DeserializeObject(result);
                return Ok(json);
            }
        }
    }
}
