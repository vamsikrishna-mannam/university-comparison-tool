<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.js"></script>
</head>
<body>

    <form id="form1" runat="server" style="background-color:burlywood">
    <div>
    
        <div class="container">
         <div class="jumbotron">
                 <h1>Adding a record to database</h1>
         </div>
    </div>


<asp:LinkButton ID="home" 
            runat="server" 
            style="font-family:'Century Schoolbook'; font-style:italic"
            CssClass="btn btn-warning"    
            OnClick="home_Click">
    <span aria-hidden="true" class="glyphicon glyphicon-menu-left"></span>Home
</asp:LinkButton>
        
        <div class="form-group" >
        <asp:Label ID="Label1" runat="server" Text="Name of The University" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="name" runat="server" CssClass="form-control" Width="243px"></asp:TextBox>
            <br />
        </div>


        <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Founded On" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="founded" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>


        <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Gre Score" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="gre" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>


        <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Toefl Score" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="toefl" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Application Fee" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="app_fee" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Under Graduate Score" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="ug_score" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Annual Fee" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="annum_fee" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Acceptance Rate" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="acceptance_rate" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label9" runat="server" Text="Student Faculty Ratio" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="stu_fac_ratio" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label10" runat="server" Text="Student Satisfaction Rate" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="stu_satis_rate" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label11" runat="server" Text="Graduation Rate" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="graduation_rate" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label12" runat="server" Text="University Rank" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="rank" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label13" runat="server" Text="Location" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="location" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label14" runat="server" Text="State" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="state" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label15" runat="server" Text="Zipcode" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="zipcode" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label16" runat="server" Text="Latitude" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="latitude" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
        </div>

        <div class="form-group">
        <asp:Label ID="Label17" runat="server" Text="Longitude" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
        <asp:TextBox ID="longitude" runat="server"  CssClass="form-control"></asp:TextBox>
            <br />
            <br />
            <br />
        </div>











        <div>
            <br />
        <asp:Button ID="btn" OnClientClick="return validateForm()" runat="server" Text="Add" CssClass="btn btn-primary" Font-Bold="true" Font-Italic="true" Font-Names="Century Schoolbook" OnClick="btn_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn0" runat="server" Text="Clear" CssClass="btn btn-primary" Font-Bold="true" Font-Italic="true" Font-Names="Century Schoolbook" OnClick="btn0_Click" />
            </div>



    </div>
    </form>


     <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

    <script>

        function validateText(id) {
            if ($("#" + id).val() == null || $("#" + id).val() == "") {
                var div = $("#" + id).closest("div");
                div.addClass("has-error");
                return false;
            }
            else {
                var div = $("#" + id).closest("div");
                div.removeClass("has-error");
                return true;
            }
        }



        $(document).ready(
            function validateForm () {
                $("#btn").click(function () {
                    if (!validateText("name")) {
                        return false;
                    }
                    if (!validateText("founded")) {
                        return false;
                    }
                    if (!validateText("gre")) {
                        return false;
                    }
                    if (!validateText("toefl")) {
                        return false;
                    }
                    if (!validateText("app_fee")) {
                        return false;
                    }
                    if (!validateText("ug_score")) {
                        return false;
                    }
                    if (!validateText("annum_fee")) {
                        return false;
                    }
                    if (!validateText("acceptance_rate")) {
                        return false;
                    }
                    if (!validateText("stu_fac_ratio")) {
                        return false;
                    }
                    if (!validateText("stu_satis_rate")) {
                        return false;
                    }
                    if (!validateText("graduation_rate")) {
                        return false;
                    }
                    if (!validateText("rank")) {
                        return false;
                    }
                    if (!validateText("location")) {
                        return false;
                    }
                    if (!validateText("state")) {
                        return false;
                    }
                    if (!validateText("zipcode")) {
                        return false;
                    }
                    if (!validateText("latitude")) {
                        return false;
                    }
                    if (!validateText("longitude")) {
                        return false;
                    }

                   
                    return true;
                  
                }
                )


                $("#founded").keypress(function (e) {

                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#founded").closest("div");
                        div.addClass("has-warning");

                        return false;
                    }
                    else {
                        var div = $("#founded").closest("div");
                        div.removeClass("has-warning");
                    }
                });

                $("#gre").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#gre").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else
                    {
                        var div = $("#gre").closest("div");
                        div.removeClass("has-warning");
                    }
                });

                $("#toefl").keypress(function (e) {

                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#toefl").closest("div");
                        div.addClass("has-warning");

                        return false;
                    }
                    else

                    {
                        var div = $("#toefl").closest("div");
                        div.removeClass("has-warning");
                    }
                });

                $("#app_fee").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#app_fee").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#app_fee").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#ug_score").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#ug_score").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#ug_score").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#annum_fee").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#annum_fee").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#annum_fee").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#acceptance_rate").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#acceptance_rate").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#acceptance_rate").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#stu_fac_ratio").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#stu_fac_ratio").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#stu_fac_ratio").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#stu_satis_rate").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#stu_satis_rate").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#stu_satis_rate").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#graduation_rate").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#graduation_rate").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#graduation_rate").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#rank").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#rank").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#rank").closest("div");
                        div.removeClass("has-warning");
                    }
                });
                $("#zipcode").keypress(function (e) {
                    if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                        var div = $("#zipcode").closest("div");
                        div.addClass("has-warning");
                        return false;
                    }

                    else {
                        var div = $("#zipcode").closest("div");
                        div.removeClass("has-warning");
                    }
                });



            }
            );



    </script>




</body>
</html>
