<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous"/>
</head>


<body>
    <form id="form" runat="server" style="background-color:darksalmon">
    <div class="container">
         <div class="jumbotron">
                 <h1>UNI INFO</h1>      
                 <p>This is a web based one stop application to choose the best university of your choice. My system has all the basic details about universities regarding the admissions and life at university. You can also contribute to my database by just clicking on contribute button. The ability to find directions to selected university, temperature at that place and comparisons of two universities form the striking features of my application. </p>
         </div>
    </div>
   

     <div class="btn-group btn-group-justified">
  <a href="add.aspx" class="btn btn-success" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>Contribute</strong></a>
  <a href="view.aspx" class="btn btn-warning" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>View Database</strong></a>
  <a href="modify-database.aspx" class="btn btn-primary" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>Modify</strong></a>
  <a href="detailed_info.aspx" class="btn btn-danger" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>Detailed Info</strong></a>
  <a href="chart.aspx" class="btn btn-default" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>Compare Tool</strong></a>
  <a href="signout.aspx"  class="btn btn-info" style="font-family:'Century Schoolbook'; font-style:italic; text-decoration:underline;"><strong>Logout</strong></a>
    </div>


     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>   

    <style type="text/css">
.carousel{
    background: #2f4357;
    margin-top: 20px;
}
.carousel .item img{
    margin: 0 auto; /* Align slide image horizontally center */
}
.bs-example{
	margin: 20px;
}
</style>

<div class="container">
<div class="bs-example">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>   
        <!-- Wrapper for carousel items -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="pics/25.jpg" alt="First Slide">
            </div>
            <div class="item">
                <img src="pics/26.jpg" alt="Second Slide">
            </div>
            <div class="item">
                <img src="pics/27.jpg" alt="Third Slide">
            </div>
        </div>
        <!-- Carousel controls -->
        <a class="carousel-control left" href="#myCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="carousel-control right" href="#myCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>
</div>



       
        <div>
        <p><strong style="font-family: 'Century Schoolbook'; font-weight: bold; font-style: italic">Contact:</strong></p>
        <h4 style="font-family: 'Century Schoolbook'; font-weight: bold; font-style: italic">Vamsikrishna Mannam</h4>
        <h4 style="font-family: 'Century Schoolbook'; font-weight: bold; font-style: italic">vm59@zips.uakron.edu</h4>
        <h4 style="font-family: 'Century Schoolbook'; font-weight: bold; font-style: italic">(330)622-2792</h4>
        </div>
        </form>
    </body>

</html>
