using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace LabSystem
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Привет, " + Request.QueryString["user"];
        }

        protected void accept_Click(object sender, EventArgs e)
        {
            if ((task.Text != "") && (linktolab.Text != ""))
            {

                addingUserDataContext db = new addingUserDataContext();
                links usersLinks = new links
                {
                    name = Request.QueryString["user"],
                    link = linktolab.Text,
                    task = task.Text
                };

                db.links.InsertOnSubmit(usersLinks);
                db.SubmitChanges();
                task.Text = string.Empty;
                linktolab.Text = string.Empty;
                Message.Text = string.Empty;
                Response.Redirect("/dashboard.aspx");
            }
            else
            {
                Message.Text = "Не указано задание либо ссылка на работу";
            }
        }
    }
}