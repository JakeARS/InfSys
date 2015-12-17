using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSystem
{
    public partial class AdminDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Привет, " + Request.QueryString["user"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            addingUserDataContext add = new addingUserDataContext();
            add.ExecuteCommand("TRUNCATE TABLE [links]");
            Response.Redirect("/AdminDashboard.aspx?user=" + Request.QueryString["user"]);
        }
    }
}