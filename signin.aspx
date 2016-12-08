<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
</head>
<body>


    <form id="form1" runat="server" style="font-family: 'Century Schoolbook'; font-style: italic; background-color:darkcyan; font-weight: bold" >
    
         <div class="container">
         <div class="jumbotron">
                 <h1>Welcome Back</h1>
         </div>
    </div>

    
         Returning User&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New User?Register<br />
         <br />
         <asp:Label ID="Label1" runat="server" Text="E-mail" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label2" runat="server" Text="First Name" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
         <br />
         <asp:TextBox ID="email" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="first" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="first" ErrorMessage="Cannot be empty" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook" ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Label ID="Label3" runat="server" Text="Password" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label4" runat="server" Text="Last Name" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
         <br />
         <asp:TextBox ID="pwd1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="last" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="last" ErrorMessage="Cannot be empty" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook" ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
         <br />
         <br />
         <asp:Button ID="btn1" runat="server" Text="Log In" CssClass="btn btn-success" Font-Names="Century Schoolbook" Font-Italic="true" OnClick="btn1_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label5" runat="server" Text="Email" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="email2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email2" ErrorMessage="Cannot be empty" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook" ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email2" ErrorMessage="Invaid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grp"></asp:RegularExpressionValidator>
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Label ID="Label6" runat="server" Text="Create Password" Font-Italic="true" Font-Bold="true" Font-Names="Century Schoolbook"></asp:Label>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="pwd2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwd2" ErrorMessage="Cannot be empty" Font-Bold="True" Font-Italic="True" Font-Names="Century Schoolbook" ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="btn2" runat="server" Text="Get Started" ValidationGroup="grp"  CssClass="btn btn-success" Font-Italic="true" Font-Names="Century Schoolbook" OnClick="btn2_Click" />

    
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />

    
    </form>
</body>
</html>
