using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class detailed_info : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("signin.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string query = "Select *from dbo.final where name='" + dropdownlist.Text + "'";

        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
       DataSet ds = new DataSet();
       da.Fill(ds);



        double value = Double.Parse(ds.Tables[0].Rows[0]["gre"].ToString());
        pgre.Attributes["aria-valuemin"] = "0";
        pgre.Attributes["aria-valuemax"] = "340";
        pgre.Attributes["aria-valuenow"] = value.ToString();
        pgre.Attributes.CssStyle["width"] = string.Format("{0}%", value*100/340);
        pgre.Controls.Add(new LiteralControl(string.Format("{0}/340", value)));

        double value1 = Double.Parse(ds.Tables[0].Rows[0]["toefl"].ToString());
        ptoefl.Attributes["aria-valuemin"] = "0";
        ptoefl.Attributes["aria-valuemax"] = "120";
        ptoefl.Attributes["aria-valuenow"] = value1.ToString();
        ptoefl.Attributes.CssStyle["width"] = string.Format("{0}%", value1 * 100 / 120);
        ptoefl.Controls.Add(new LiteralControl(string.Format("{0}/120", value1)));

        double value2 = Double.Parse(ds.Tables[0].Rows[0]["ug_score"].ToString());
        pug.Attributes["aria-valuemin"] = "0";
        pug.Attributes["aria-valuemax"] = "4";
        pug.Attributes["aria-valuenow"] = value2.ToString();
        pug.Attributes.CssStyle["width"] = string.Format("{0}%", value2 * 100 / 4);
        pug.Controls.Add(new LiteralControl(string.Format("{0}/4", value2)));


        double value3 = Double.Parse(ds.Tables[0].Rows[0]["annum_fee"].ToString());
        pannum.Attributes["aria-valuemin"] = "0";
        pannum.Attributes["aria-valuemax"] = "70000";
        pannum.Attributes["aria-valuenow"] = value3.ToString();
        pannum.Attributes.CssStyle["width"] = string.Format("{0}%", value3 * 100 / 70000);
        pannum.Controls.Add(new LiteralControl(string.Format("${0}", value3)));


        double value4 = Double.Parse(ds.Tables[0].Rows[0]["acceptance_rate"].ToString());
        pacceptance.Attributes["aria-valuemin"] = "0";
        pacceptance.Attributes["aria-valuemax"] = "100";
        pacceptance.Attributes["aria-valuenow"] = value4.ToString();
        pacceptance.Attributes.CssStyle["width"] = string.Format("{0}%", value4);
        pacceptance.Controls.Add(new LiteralControl(string.Format("{0}/100", value4)));


        double value5 = Double.Parse(ds.Tables[0].Rows[0]["stu_fac_ratio"].ToString());
        pstufac.Attributes["aria-valuemin"] = "0";
        pstufac.Attributes["aria-valuemax"] = "50";
        pstufac.Attributes["aria-valuenow"] = value5.ToString();
        pstufac.Attributes.CssStyle["width"] = string.Format("{0}%", value5*2);
        pstufac.Controls.Add(new LiteralControl(string.Format("{0} students/faculty", value5)));


        double value6 = Double.Parse(ds.Tables[0].Rows[0]["stu_satis_rate"].ToString());
        psatis.Attributes["aria-valuemin"] = "0";
        psatis.Attributes["aria-valuemax"] = "100";
        psatis.Attributes["aria-valuenow"] = value6.ToString();
        psatis.Attributes.CssStyle["width"] = string.Format("{0}%", value6);
        psatis.Controls.Add(new LiteralControl(string.Format("{0}/100", value6)));


        double value7 = Double.Parse(ds.Tables[0].Rows[0]["graduation_rate"].ToString());
        pgrad.Attributes["aria-valuemin"] = "0";
        pgrad.Attributes["aria-valuemax"] = "100";
        pgrad.Attributes["aria-valuenow"] = value7.ToString();
        pgrad.Attributes.CssStyle["width"] = string.Format("{0}%", value7);
        pgrad.Controls.Add(new LiteralControl(string.Format("{0}/100", value7)));



        string a = ds.Tables[0].Rows[0]["name"].ToString();
       // string b = ds.Tables[0].Rows[0]["location"].ToString();
       // string c = ds.Tables[0].Rows[0]["state"].ToString();
        //string d= ds.Tables[0].Rows[0]["zipcode"].ToString();
       // string f = a + "," + b + "," + c + "-" + d;
        Page.ClientScript.RegisterStartupScript(this.GetType(), "clientscript", "document.getElementById('destination').value='" + a + "';", true);








    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }
}


     
      
    
