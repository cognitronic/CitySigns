using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CitySigns.Helpers;
using Telerik.Web.UI;
using System.Configuration;
using System.Text;


namespace CitySigns.Master
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblMessage.Visible = false;
        }

        protected void FreeEstimateClicked(object o, EventArgs e)
        {
            var sb = new StringBuilder();
            sb.Append("First Name: ");
            sb.Append(tbFirstName.Text);
            sb.Append("<br /><br />Last Name: ");
            sb.Append(tbLastName.Text);
            sb.Append("<br /><br />Email: ");
            sb.Append(tbEmail.Text);
            sb.Append("<br /><br />Message: ");
            sb.Append(tbDescription.Text);
            sb.Append("<br /><br />Phone: ");
            sb.Append(tbPhone.Text);
            lblMessage.Visible = true;

            var sb2 = new StringBuilder();
            sb2.Append(HelperUtils.EmailHTMLStart());
            sb2.Append("Hello ");
            sb2.Append(tbFirstName.Text);
            sb2.Append(",<br /><br /> ");
            sb2.Append("<p>Thank you for your request for a Free Estimate.  A member of our sales team will review your information and contact you shortly.</p><p>We appreciate the opportunity to work with you.</p><p>Thank you,</p><p>City Signs</p>");
            sb2.Append(HelperUtils.EmailHTMLEnd());


            try
            {
                var custemail = tbEmail.Text;
                HelperUtils.SendEmail("citysignsmodesto82@gmail.com", "estimates@citysignsmodesto.com", "", "dschreiber@mydatapath.com", "Online Free Estimate Request", sb.ToString(), false);

                HelperUtils.SendEmail(custemail, "no-reply@citysignsmodesto.com", "", "dschreiber@mydatapath.com", "City Signs Online Free Estimate Request", sb2.ToString(), false);

                lblMessage.Text = "Thank you for your interest!!";
                tbDescription.Text = "";
                tbEmail.Text = "";
                tbFirstName.Text = "";
                tbLastName.Text = "";
                tbPhone.Text = "";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "We're sorry but your online request cannot be processed right now.  Try again or call during business hours.  Thank you!";
            }
        }
    }
}