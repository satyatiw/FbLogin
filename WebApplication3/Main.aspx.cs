using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string s3 = @"Data Source=DEL1-LHP-N65317;Initial Catalog=FbLogin;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            L4.Visible = false;
        }

        protected void B2_Click(object sender, EventArgs e)
        {
            using (SqlConnection Conn = new SqlConnection(s3))
            {
                Conn.Open();
                SqlCommand cmd = new SqlCommand("FbLogins", Conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName",T3.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", T4.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", T5.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", T6.Text.Trim());
                cmd.Parameters.AddWithValue("@ConfirmPassword", T7.Text.Trim());
                cmd.Parameters.AddWithValue("@Gender", RL1.SelectedValue);
                cmd.Parameters.AddWithValue("@City", DDL1.SelectedValue);


                cmd.ExecuteNonQuery();
            }
        }

        protected void B3_Click(object sender, EventArgs e)
        {
            T3.Text = "";
            T4.Text = "";
            T5.Text = "";
            T6.Text = "";
            T7.Text = "";
            RL1.SelectedValue = "";
            DDL1.SelectedValue = "";
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            using (SqlConnection Conn = new SqlConnection(s3))
            {
                Conn.Open();
                //String query = "SELECT COUNT(1) FROM Regn WHERE Name=@UserName AND Password=@Password";
                SqlCommand cmd = new SqlCommand("FbSign", Conn);
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
                    L4.Visible = true;
                }


            }
        }
    }
}