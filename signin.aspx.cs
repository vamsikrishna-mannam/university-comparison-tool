using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from users where email='"+email.Text+"' and password='"+pwd1.Text+"'", con);
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach(DataRow dr in dt.Rows)
        {
           
            Session["username"] = dr["email"].ToString();
            con.Close();
            Response.Redirect("home.aspx");

        }
         con.Close();
         ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid E-Mail or Password')</script>");
          
    }

    protected void btn2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into users values('" + first.Text + "','" + last.Text + "','" + email2.Text + "','" + pwd2.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        first.Text = "";
        last.Text = "";
        email2.Text = "";
        pwd2.Text = "";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('You are Registered Succesfully');", true);

    }
}