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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //if (Login1.UserName == user)
            //{
            //    if (Login1.Password == pass)
            //    {
            //        Response.Redirect("/dashboard.aspx");
            //    }
            //}
        }

        protected void LoginButton0_Click(object sender, EventArgs e)
        {
            Response.Redirect("/reg.aspx");
        }
        
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (Login1.UserName == "Admin")
            {
                if (Login1.Password == "12345")
                {
                    Response.Redirect("/AdminDashboard.aspx?user=" + Login1.UserName);
                }
            }
            else
            {
                try
                {
                    addingUserDataContext db = new addingUserDataContext();
                    var user = (from u in db.users
                        where u.login == Login1.UserName
                        select u).ToArray();

                    foreach (users t in user)
                    {
                        if (Login1.UserName == user[0].login)
                        {
                            if (Login1.Password.GetHashCode().ToString() == user[0].password)
                            {
                                Response.Redirect("/dashboard.aspx?user=" + Login1.UserName);
                            }
                        }
                    }
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }
    }
}