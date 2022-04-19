using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AuctionProject
{
    public partial class Login : System.Web.UI.Page
    {
        private DataView dView;
        private DataRowView dRowView;
        string userType, email, password;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonLogin_Click(object sender, EventArgs e)
        {
            if (textboxEmail.Text.Length > 0 && textboxPassword.Text.Length > 0)
            {
                dView = (DataView)sdsLogin.Select(DataSourceSelectArguments.Empty);
                if (dView.Count > 0)
                {
                    dRowView = dView[0];
                    userType = (string)dRowView["UserType"];
                    email = (string)dRowView["Email"];
                    Session["UserType"] = userType;
                    Session["Email"] = email;
                    Response.Redirect("Default.html");
                }
                else
                {
                    labelStatus.Text = "Invalid email or password.";
                }
            }
            else
            {
                labelStatus.Text = "Please enter an email and a password.";
            }
        }
    }
}