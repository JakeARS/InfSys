using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSystem
{
    public partial class Logreg : System.Web.UI.Page
    {
        private String user = "Leviosa";
        private String pass = "123";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (Login1.UserName == user)
            {
                if (Login1.Password == pass)
                {
                    Response.Redirect("/dashboard.aspx");
                }
            }
        }

        protected void LoginButton0_Click(object sender, EventArgs e)
        {
            Response.Redirect("/reg.aspx");
        }
    }
}