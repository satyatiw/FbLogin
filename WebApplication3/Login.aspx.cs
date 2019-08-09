using System;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string s1 = @"Data Source=DEL1-LHP-N65317;Initial Catalog=FbLogin;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            L3.Visible = false;
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            using (SqlConnection Conn = new SqlConnection(s1))
            {
                Conn.Open();
                //String query = "SELECT COUNT(1) FROM Regn WHERE Name=@UserName AND Password=@Password";
                SqlCommand cmd = new SqlCommand("FbSign",Conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@UserName", T1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", T2.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar()); 
                if (count == 1)
                {
                    Session["UserName"] = T1.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    L3.Visible = true;
                }


            }
        }
    }
}