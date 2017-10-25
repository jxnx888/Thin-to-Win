using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thin_To_Win
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcualte_Click(object sender, EventArgs e)
        {
            double weight, heightFt, heightIn, totalHeight, finalBMI;

            weight = double.Parse(txtWeight.Text);

            heightFt = double.Parse(txtHeightFt.Text);

            heightIn = double.Parse(txtHeightIn.Text);

            totalHeight = (heightFt * 12) + heightIn;
             
            finalBMI = (weight * 703)/(totalHeight * totalHeight) ;

            lblYourBMI.Text = finalBMI.ToString("");

            if (finalBMI < 18.5)
            {
                lblCategory.Text = finalBMI.ToString("Under Weight");
            }
            else if (finalBMI >= 18.5 && finalBMI < 25)
            {
                lblCategory.Text = finalBMI.ToString("Normal Weight");
            }
            else if (finalBMI > 25)
            {
                lblCategory.Text = finalBMI.ToString("Over Weight");
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAge.Text = "";
            rblGender.SelectedValue = "";
            txtWeight.Text = "";
            txtHeightFt.Text = "";
            txtHeightIn.Text = "";
            lblYourBMI.Text = "";
            lblCategory.Text = "";
        }
    }
}