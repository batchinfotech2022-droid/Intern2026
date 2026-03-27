#### ***METHOD TO CREATE CHART***





***Perfect 👍 You want the \*\*local download method\*\* (the colorful `chart.js` file inside Scripts).***

***I’ll give you the correct step-by-step method from scratch.***



***We will:***



***✔ Download Chart.js manually***

***✔ Save it inside Scripts folder***

***✔ Connect it without bundle***

***✔ Use canvas in Index***

***✔ Avoid the previous error***



***---***



***# ✅ METHOD: Local Chart.js File (Colorful Version)***



***---***



***# 🔹 STEP 1 — Download Chart.js Properly***



***Open your browser.***



***Go to:***



***```***

***https://cdn.jsdelivr.net/npm/chart.js/dist/chart.umd.js***

***```***



***You will see a large JavaScript file (thousands of lines).***



***Now:***



***1. Right click → Save As***

***2. Save file as:***



***```***

***chart.js***

***```***



***---***



***# 🔹 STEP 2 — Move File to Your Project***



***Place it inside:***



***```***

***BiSchool.UI → Scripts → chart.js***

***```***



***So your structure becomes:***



***```***

***BiSchool.UI***

 ***└── Scripts***

      ***└── chart.js   ✅***

***```***



***Now when you open it in Visual Studio, it will look colorful because it contains real JS code.***



***---***



***# 🔹 STEP 3 — DO NOT USE BundleConfig***



***Open:***



***```***

***App\_Start → BundleConfig.cs***

***```***



***Make sure you DO NOT have this:***



***```csharp***

***bundles.Add(new ScriptBundle("~/bundles/chart").Include(***

            ***"~/Scripts/chart.js"));***

***```***



***If you see it → DELETE it.***



***Very important ⚠***



***---***



***# 🔹 STEP 4 — Connect Chart.js in Layout***



***Open:***



***```***

***Views → Shared → \_Layout.cshtml***

***```***



***Find this line:***



***```csharp***

***@RenderSection("Scripts", required: false)***

***```***



***Now ADD this line just ABOVE it:***



***```html***

***<script src="~/Scripts/chart.js"></script>***

***```***



***So it becomes:***



***```html***

***@Scripts.Render("~/bundles/jquery")***

***@Scripts.Render("~/bundles/bootstrap")***



***<script src="~/Scripts/chart.js"></script>***



***@RenderSection("Scripts", required: false)***

***```***



***Save.***



***---***



***# 🔹 STEP 5 — Add Canvas in Index.cshtml***



***Open:***



***```***

***Views → Fees → Index.cshtml***

***```***



***Add this below your table:***



***```html***

***<h3>Fees Chart</h3>***

***<canvas id="feesChart" width="400" height="200"></canvas>***

***```***



***Save.***



***---***



***# 🔹 STEP 6 — Add Chart Script in Index.cshtml***



***At bottom of Index.cshtml add:***



***```csharp***

***@section Scripts {***

    ***<script>***

        ***var ctx = document.getElementById('feesChart').getContext('2d');***



        ***var myChart = new Chart(ctx, {***

            ***type: 'bar',***

            ***data: {***

                ***labels: \['Jan', 'Feb', 'Mar', 'Apr', 'May'],***

                ***datasets: \[{***

                    ***label: 'Fees Collected',***

                    ***data: \[12000, 15000, 10000, 18000, 13000],***

                    ***borderWidth: 1***

                ***}]***

            ***},***

            ***options: {***

                ***scales: {***

                    ***y: {***

                        ***beginAtZero: true***

                    ***}***

                ***}***

            ***}***

        ***});***

    ***</script>***

***}***

***```***



***Save.***



***---***



***# 🔹 STEP 7 — Clean \& Run***



***In Visual Studio:***



***1. Build***

***2. Clean Solution***

***3. Rebuild***

***4. Run***



***---***



***# 🚨 VERY IMPORTANT RULE***



***✔ You are loading chart.js using `<script>`***

***❌ You are NOT using `@Scripts.Render("~/bundles/chart")`***

***❌ You are NOT adding chart.js inside BundleConfig***



***If you use bundle → old ASP.NET minifier crashes.***



***---***



***# 🎯 Final Result***



***You will now have:***



***✔ Colorful `chart.js` file in Scripts***

***✔ No NullReferenceException***

***✔ Working chart***

***✔ No bundling error***



***---***



***If chart still doesn’t show, tell me:***



***\* Is your MVC version 5?***

***\* Are you getting console error?***

***\* Or blank page?***



***I’ll fix it immediately 😊***



