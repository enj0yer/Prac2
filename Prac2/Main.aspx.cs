using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prac2
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session.Add("login", Login.Text);
                Response.Redirect("CompleteValidation.aspx");
            }
        }

        protected void Email_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Password_reply_TextChanged(object sender, EventArgs e)
        {

        }
    }
}