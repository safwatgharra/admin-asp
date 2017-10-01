using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection con = new SqlConnection(@"Data Source = 62.219.78.210; Initial Catalog = site11; Persist Security Info = True; User ID = site11; Password = zxc11");
            con.Open();
            string checkuser = "select count(*) from UsersTB where UserID=" + UserID.Text + "AND UserPass=" + Password.Text+ "AND TypeCode=3";
            SqlCommand com = new SqlCommand(checkuser, con);
            int i = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (i > 0)
            {
                Response.Redirect("users.aspx");
            }
            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
}