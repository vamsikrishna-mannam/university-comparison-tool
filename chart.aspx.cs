using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;


public partial class chart : System.Web.UI.Page
{
    StringBuilder str = new StringBuilder();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("signin.aspx");
        }
        // SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
        //con.Open();
        // if (Page.IsPostBack == false)
        //  {
        //    chart_bind();
        // }

    }
    private void chart_bind()
    {
        SqlConnection con = new SqlConnection("Server=.\\SQLEXPRESS;Database=vm59;Integrated Security=true");
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select name, acceptance_rate, stu_satis_rate, graduation_rate from final where name='"+DropDownList1.Text+ "' or name='" + DropDownList2.Text + "' ", con);
 
        DataTable dt = new DataTable();
        try
        {
            da.Fill(dt);

        str.Append(@"<script type=text/javascript> google.load( *visualization*, *1*, {packages:[*corechart*]});
        google.setOnLoadCallback(drawChart);
        function drawChart() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'name');
        data.addColumn('number', 'Acceptance Rate');
        data.addColumn('number', 'Student Satisfaction Rate');
        data.addColumn('number', 'Graduation Rate');
        data.addRows(" + dt.Rows.Count + ");");

            Int32 i;
            for (i = 0; i <= dt.Rows.Count - 1; i++)
            {
                str.Append("data.setValue( " + i + "," + 0 + "," + "'" + dt.Rows[i]["name"].ToString() + "');");
                str.Append("data.setValue(" + i + "," + 1 + "," + dt.Rows[i]["acceptance_rate"].ToString() + ") ;");
                str.Append(" data.setValue(" + i + "," + 2 + "," + dt.Rows[i]["stu_satis_rate"].ToString() + ");");
                str.Append(" data.setValue(" + i + "," + 3 + "," + dt.Rows[i]["graduation_rate"].ToString() + ");");
            }
            str.Append("var chart = new google.visualization.BarChart(document.getElementById('chart_div'));");
            str.Append(" chart.draw(data, {width: 1350, height: 500, title: 'University Performance',");
            str.Append("vAxis: {title: 'Universities', titleTextStyle: {color: 'brown'}}");
            str.Append("}); }");
            str.Append("</script>");
            ltl1.Text = str.ToString().TrimEnd(',').Replace('*', '"');
            con.Close();
        }
        catch
        {

        }
        finally
        {
            con.Close();
        }

    }

    protected void home_Click(object sender, EventArgs e)
    {
        Response.Redirect("home.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        chart_bind();
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {


        SqlDataSource2.SelectCommand = "SELECT name FROM final except select name from final where name='" + DropDownList1.Text + "'";
            DropDownList2.DataBind();
       

    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlDataSource1.SelectCommand = "SELECT name FROM final except select name from final where name='" + DropDownList2.Text + "'";
        DropDownList1.DataBind();
     


    }

  
}