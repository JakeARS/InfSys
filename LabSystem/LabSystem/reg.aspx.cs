using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSystem
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton0_Click(object sender, EventArgs e)
        {
            addingUserDataContext db = new addingUserDataContext();

            users usersDb = new users();

            if (Password.Text != TextBox1.Text)
            {
                Label1.Text = "Пароли не совпадают";
            }
            else
            {
                usersDb.login = UserName.Text;
                usersDb.password = Password.Text.GetHashCode().ToString();

                db.users.InsertOnSubmit(usersDb);
                db.SubmitChanges();

                Response.Redirect("/logreg.aspx");
            }
        }
    }
}