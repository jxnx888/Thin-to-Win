using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data;

namespace Thin_to_Win
{
    public partial class JustForYou_Diet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // THIS PART IS TO REDIRECT USER IF THEY DO NOT HAVE AN ACCOUNT
            // I was having a problem when all pages would pass through the profile page Page_Load, if the user was not logged, it would go straight to Register no matter the page
            string url = HttpContext.Current.Request.Url.AbsoluteUri; // Current page url
            Boolean correctPage = false;

            if (url == "http://localhost:64945/JustForYou-Diet")  // http://localhost:64945/JustForYou-WorkOut IS THE Local JustForYou-Diet URL, will change to make more dynamic,  CHECKS IF THE CURRENT PAGE IS THE JustForYou-Diet PAGE
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
                    SqlDataSource2.SelectParameters.Add("Email", Context.User.Identity.GetUserName());
                    //Access DataSource DateSet Mode
                    DataView ds = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty); //Dataset, like a viewstate
                    lblBMI.Text = ds[0][10].ToString(); // the first number is the row, since we only have one user, it is the first row, the second is the field
                    lblBMINum.Text = ds[0][9].ToString(); // the first number is the row, since we only have one user, it is the first row, the second is the field
                    WelcomeFirst.Text = ds[0][3].ToString();
                    WelcomeLast.Text = ds[0][2].ToString();
                }
            }

        }
    }
}