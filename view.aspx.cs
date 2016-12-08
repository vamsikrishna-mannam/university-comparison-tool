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
    public string getWhileLoopData()
    {
        string htmlStr = "";
        SqlCommand thisCommand = con.CreateCommand();
        thisCommand.CommandText = "SELECT * from final";
        con.Open();
        SqlDataReader reader = thisCommand.ExecuteReader();

        while (reader.Read())
        {
            string name = reader.GetString(0);
            int founded = reader.GetInt32(1);
            int gre = reader.GetInt32(2);
            int toefl = reader.GetInt32(3);
            int app_fee = reader.GetInt32(4);
            double ug_score = reader.GetDouble(5);
            int annum_fee = reader.GetInt32(6);
            double acceptance_rate = reader.GetDouble(7);
            double stu_fac_ratio = reader.GetDouble(8);
            double stu_satis_rate = reader.GetDouble(9);
            double graduation_rate = reader.GetDouble(10);
            int rank = reader.GetInt32(11);
            string location = reader.GetString(12);
            string state = reader.GetString(13);
            int zipcode = reader.GetInt32(14);
            double latitude = reader.GetDouble(15);
            double longitude = reader.GetDouble(16);
            htmlStr += "<tr><td>" + name + "</td><td>" + founded + "</td><td>" + gre + " </ td ><td>" + toefl + "</td><td>" + app_fee + "</td><td>" + ug_score + "</td><td>" + annum_fee + "</td><td>" + acceptance_rate + "</td><td>" + stu_fac_ratio + "</td><td>" + stu_satis_rate + "</td><td>" + graduation_rate + "</td><td>" + rank + "</td><td>" + location + "</td><td>" + state + "</td><td>" + zipcode + "</td><td>" + latitude + "</td><td>" + longitude + "</td></tr>";
        }

        con.Close();
        return htmlStr;
    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");

    }
}