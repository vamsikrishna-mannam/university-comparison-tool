using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("signin.aspx");
        }
    }

    protected void btn0_Click(object sender, EventArgs e)
    {
        name.Text = "";
        founded.Text = "";
        gre.Text = "";
        toefl.Text = "";
        app_fee.Text = "";
        ug_score.Text = "";
        annum_fee.Text = "";
        acceptance_rate.Text = "";
        stu_fac_ratio.Text = "";
        stu_satis_rate.Text = "";
        graduation_rate.Text = "";
        rank.Text = "";
        location.Text = "";
        state.Text = "";
        zipcode.Text = "";
        latitude.Text = "";
        longitude.Text = "";
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into final values('" + name.Text + "','" + founded.Text + "','" + gre.Text + "','" + toefl.Text + "','" + app_fee.Text + "','" + ug_score.Text + "','" + annum_fee.Text + "','" + acceptance_rate.Text + "','" + stu_fac_ratio.Text + "','" + stu_satis_rate.Text + "','" + graduation_rate.Text + "','" + rank.Text + "','" + location.Text + "','" + state.Text + "','" + zipcode.Text + "','" + latitude.Text + "','" + longitude.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();

        name.Text = "";
        founded.Text = "";
        gre.Text = "";
        toefl.Text = "";
        app_fee.Text = "";
        ug_score.Text = "";
        annum_fee.Text = "";
        acceptance_rate.Text = "";
        stu_fac_ratio.Text = "";
        stu_satis_rate.Text = "";
        graduation_rate.Text = "";
        rank.Text = "";
        location.Text = "";
        state.Text = "";
        zipcode.Text = "";
        latitude.Text = "";
        longitude.Text = "";

        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Record Added Succesfully');</script>");
    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}