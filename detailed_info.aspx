<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detailed_info.aspx.cs" Inherits="detailed_info" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
     <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/main.css" rel="stylesheet" />
</head>
<body>


     <form id="form1" style="background-color:antiquewhite" runat="server">


     <div class="container">
         <div class="jumbotron">
                 <h1>Detailed Information</h1> 
                <p>Select an university then get route to it and finally find all the educational details.</p>     
                 
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
         <asp:Label ID="Label3" runat="server" CssClass="label label-info" Text="Select an university:" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:DropDownList ID="dropdownlist" style="font-family:'Century Schoolbook'; font-style:italic; font-size:16px" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Height="38px">
         </asp:DropDownList>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="Get Info" Width="79px" style="font-family: 'Century Schoolbook'; font-size: 16px; font-style: italic" OnClick="Button1_Click" />
         <br />
         <br />
         <br />
         <br />
         <br />

         <asp:Label ID="Label4" runat="server" CssClass="label label-info" Text="Required GRE Score" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pgre" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label5" runat="server" CssClass="label label-info" Text="Required TOEFL Score" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="ptoefl" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label6" runat="server" CssClass="label label-info" Text="Required Under Graduate GPA:" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pug" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label7" runat="server" CssClass="label label-info" Text="Annual Fee" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pannum" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label8" runat="server" CssClass="label label-info" Text="Application Acceptance Rate" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pacceptance" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label9" runat="server" CssClass="label label-info" Text="Student Faculty Ratio" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pstufac" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         <asp:Label ID="Label10" runat="server" CssClass="label label-info" Text="Student Satisfaction Rate" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="psatis" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active">
             </asp:Panel>
         </div>

         <asp:Label ID="Label11" runat="server" CssClass="label label-info" Text="Graduation Rate" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
         <div class="progress">
             <asp:Panel ID="pgrad" runat="server" CssClass="progress-bar progress-bar-success progress-bar-striped active" >
             </asp:Panel>
         </div>

         


&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vm59ConnectionString2 %>" SelectCommand="SELECT [name] FROM [final]"></asp:SqlDataSource>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />





    <script type="text/javascript"
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDa53gM8BWiqTery_i0wf2SfuYLyefR6cE&sensor=false&libraries=places">
</script>

    <script type="text/javascript">
        var source, destination;
        var directionsDisplay;
        var directionsService = new google.maps.DirectionsService();
        google.maps.event.addDomListener(window, 'load', function () {
            new google.maps.places.SearchBox(document.getElementById('source'));
            new google.maps.places.SearchBox(document.getElementById('destination'));
            directionsDisplay = new google.maps.DirectionsRenderer({ 'draggable': true });
        });

        function GetRoute() {

            var unitedstaes = new google.maps.LatLng(37.0902, 95.7129);
            var mapOptions = {
                zoom: 7,
                center: unitedstaes
            };
            map = new google.maps.Map(document.getElementById('map'), mapOptions);
            directionsDisplay.setMap(map);
            directionsDisplay.setPanel(document.getElementById('panel'));

            source = document.getElementById("source").value;
            destination = document.getElementById("destination").value;

            var request = {
                origin: source,
                destination: destination,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

            var service = new google.maps.DistanceMatrixService();
            service.getDistanceMatrix({
                origins: [source],
                destinations: [destination],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: true
            }, function (response, status) {
                if (status == google.maps.DistanceMatrixStatus.OK && response.rows[0].elements[0].status != "ZERO_RESULTS") {
                    var distance = response.rows[0].elements[0].distance.text;
                    var duration = response.rows[0].elements[0].duration.text;
                    var dvDistance = document.getElementById("dvDistance");
                    dvDistance.innerHTML = "";
                    dvDistance.innerHTML += "Distance: " + distance + "<br />";
                    dvDistance.innerHTML += "Duration:" + duration;

                } else {
                    alert("No road way to the ending point.");
                }
            });
        }
    </script>
    <table border="0" cellpadding="0" cellspacing="3">
        <tr>
            <td colspan="2" >
                &nbsp;<asp:Label ID="Label1" runat="server" CssClass="label label-success" Text="Starting Point" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
                <input type="text" id="source" style="width: 200px; font-family:'Century Schoolbook'; font-style:italic; font-size:16px" /> &nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="label label-danger" Text="Ending Point" Font-Italic="True" Font-Names="Century Schoolbook" Font-Size="16px"></asp:Label>
                <input type="text" id="destination" style="width: 200px; font-family:'Century Schoolbook'; font-style:italic; font-size:16px" />
                <br />
                <br />
                
                <input type="button" class="btn btn-primary" value="Get Route" onclick="GetRoute()" style="font-family: 'Century Schoolbook'; font-size: 16px; font-style: italic" />
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="dvDistance" style="font-family:'Century Schoolbook'; font-style:italic; color:blueviolet; font-size:16px;">
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="map" style="width: 700px; height: 700px">
                </div>
            </td>
            <td>
                <div id="panel" style="width: 500px; height: 700px; font-family: 'Century Schoolbook'; font-style: italic;">
                </div>
            </td>
        </tr>
    </table>
         <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />

        
         

        


     </form>


</body>
</html>
