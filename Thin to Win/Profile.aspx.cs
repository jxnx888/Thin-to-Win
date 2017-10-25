using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Thin_to_Win
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // THIS PART IS TO REDIRECT USER IF THEY DO NOT HAVE AN ACCOUNT
            // I was having a problem when all pages would pass through the profile page Page_Load, if the user was not logged, it would go straight to Register no matter the page
            string url = HttpContext.Current.Request.Url.AbsoluteUri; // Current page url
            Boolean correctPage = false;

            if (url == "http://localhost:64945/Profile")  // http://localhost:64945/Profile IS THE Local Profile URL, will change to make more dynamic,  CHECKS IF THE CURRENT PAGE IS THE PROFILE PAGE
            {
                correctPage = true;  // IF THE CURRENT PAGE IS THE PROFILE PAGE
            }

            // REDIRECTS IF THE CURRENT PAGE IS THE PROFILE PAGE AND THE USER IS NOT LOGGED IN
            if (Context.User.Identity.GetUserName() == "" && correctPage == true)  
            {
                Response.Redirect("~/Account/Login");
            }

            // END OF THE REDIRECT CHECK



            else if (!IsPostBack)
            {

               if (SqlDataSource2 != null)
                {
                    SqlDataSource2.SelectParameters.Add("Email", Context.User.Identity.GetUserName());  // Makes @Email
                    //Access DataSource DateSet Mode
                    DataView ds = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty); //Dataset, like a viewstate
                    FirstName.Text = ds[0][3].ToString(); // the first number is the row, since we only have one user, it is the first row, the second is the field
                    LastName.Text = ds[0][2].ToString();
                    Age.Text = ds[0][4].ToString();
                    Gender.Text = ds[0][5].ToString();
                    Weight.Text = ds[0][6].ToString();
                    Height.Text = ds[0][7].ToString();

                }
            }
            
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                SqlDataSource2.UpdateParameters.Add("Email", Context.User.Identity.GetUserName());
                var parameters = SqlDataSource2.UpdateParameters;
                parameters["LastName"].DefaultValue = LastName.Text;
                parameters["FirstName"].DefaultValue = FirstName.Text;
                parameters["Age"].DefaultValue = Age.Text;
                parameters["Gender"].DefaultValue = Gender.Text;
                parameters["Height"].DefaultValue = Height.Text;
                parameters["Weight"].DefaultValue = Weight.Text;

                double Kilograms = Double.Parse(Weight.Text) * 0.453592;
                double Meters = Double.Parse(Height.Text) * 0.0254;

                double BMI = Kilograms / (Meters* Meters);

                parameters["BMI"].DefaultValue = BMI.ToString();

                if(BMI < 18.5)
                {
                    parameters["Type"].DefaultValue = "Under Weight";
                }
                else if (BMI>=18.5 && BMI<25)
                {
                    parameters["Type"].DefaultValue = "Normal Weight";
                }
                else if (BMI >25)
                {
                    parameters["Type"].DefaultValue = "Over Weight";
                }


                try
                {
                    SqlDataSource2.Update();
                }

                catch (Exception ex)
                {
                    lblError.Text = DatabaseErrorMessage(ex.Message);
                }


            }
        }
        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }
    }
}