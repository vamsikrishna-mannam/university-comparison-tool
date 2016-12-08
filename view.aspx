<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view.aspx.cs" Inherits="add" %>

<%--<!DOCTYPE html>--%>

<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>

<html>
    <head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.js"></script>
</head>

    <body>

        <form runat="server" style="background-color:cornflowerblue">
        <div class="container">
         <div class="jumbotron">
                 <h1>Whole Database</h1>
         </div>
    </div>
        
<asp:LinkButton ID="home" 
            runat="server" 
            style="font-family:'Century Schoolbook'; font-style:italic"
            CssClass="btn btn-warning"    
            OnClick="home_Click">
    <span aria-hidden="true" class="glyphicon glyphicon-menu-left"></span>Home
</asp:LinkButton>

        <br />
        <br />
        <table class="table table-hover" border="1" style="font-family: 'Century Schoolbook'; font-style: italic; text-decoration: underline; background-color: #FFFFFF;"  >

 <tr>
      <td><strong style="font-family: 'Century Schoolbook'; font-style: italic; text-decoration: underline; color: red">University Name</strong></td>
      <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:blue">Founded</strong></td>
      <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:forestgreen">Gre Score</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:aqua">Toefl Score</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:blueviolet">Application Fee</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:brown">UnderGrad Score</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:chartreuse">Annual Fee</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:coral">Acceptance Rate</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:crimson">Student Faculty Ratio</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:darkgoldenrod">Student Satisfaction Rate</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:deeppink">Graduation Rate</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:gold">Rank</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:indianred">Location</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:lime">State</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:olive">Zipcode</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:indigo">Latitude</strong></td>
     <td><strong style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline; color:yellow">Longitude</strong></td>

    </tr>

    <%=getWhileLoopData() %>



        </table>
            
            </form>  
        </body>
    </html>