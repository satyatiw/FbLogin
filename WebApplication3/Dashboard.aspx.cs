using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            L1.Text = "Your Username is :" + Session["UserName"];
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}