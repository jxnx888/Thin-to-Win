using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Thin_to_Win.Models;


namespace Thin_to_Win.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Email.Text, Email = Email.Text };
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {

                if (IsValid)
                {
                    var parameters = SqlDataSource1.InsertParameters;
                    parameters["Email"].DefaultValue = Email.Text;
                    parameters["LastName"].DefaultValue = LastName.Text;
                    parameters["FirstName"].DefaultValue = FirstName.Text;
                    parameters["Age"].DefaultValue = Age.Text;
                    parameters["Gender"].DefaultValue = Gender.Text;
                    parameters["Height"].DefaultValue = Height.Text;
                    parameters["Weight"].DefaultValue = Weight.Text;
                    parameters["Password"].DefaultValue = Password.Text;


                    double Kilograms = Double.Parse(Weight.Text) * 0.453592;
                    double Meters = Double.Parse(Height.Text) * 0.0254;

                    double BMI = Kilograms / (Meters * Meters);

                    parameters["BMI"].DefaultValue = BMI.ToString();

                    if (BMI < 18.5)
                    {
                        parameters["Type"].DefaultValue = "Under Weight";
                    }
                    else if (BMI >= 18.5 && BMI < 25)
                    {
                        parameters["Type"].DefaultValue = "Normal Weight";
                    }
                    else if (BMI > 25)
                    {
                        parameters["Type"].DefaultValue = "Over Weight";
                    }


                    try
                    {
                        SqlDataSource1.Insert();
                        Email.Text = "";
                        LastName.Text = "";
                        FirstName.Text = "";
                        Age.Text = "";
                        Gender.Text = "";
                        Height.Text = "";
                        Weight.Text = "";
                        Password.Text = "";
                    }
                    catch (Exception ex)
                    {
                        lblError.Text = DatabaseErrorMessage(ex.Message);
                    }
                }


                // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
                //string code = manager.GenerateEmailConfirmationToken(user.Id);
                //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
                //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);

            }
            else 
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault();
            }

        }

        private string DatabaseErrorMessage(string errorMsg)
        {
            return $"<b>A database error has occurred:</b> {errorMsg}";
        }

    }
}