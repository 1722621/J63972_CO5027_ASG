<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PS4 GAMES
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Contact Us</h2>
    <form class="form-horizontal" action=" " method="post" id="validation_form" runat="server">
        <fieldset>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">E-Mail</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input name="email" placeholder="E-Mail Address" class="form-control" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">Subject</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-question-sign"></i></span>
                        <input name="subject" placeholder="Subject" class="form-control" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">Text</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                        <input name="message" placeholder="Message" class="form-control" type="text">
                    </div>
                </div>
            </div>
        </fieldset>

        <div class="row">
            <div class="col-md-12 btnSend">
                <asp:Button ID="btnContact" runat="server" Text="Send" OnClick="btnContact_Click" />
            </div>
        </div>

    </form>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">

    <div id="map"></div>
    <script>
        var map;
        function initMap() {
            map = new google.maps.Map(document.getElementById('map'), {
                /*change the lat and lng to be in brunei*/
                center: { lat: 4.899052, lng: 114.929622 },
                zoom: 20
            });
            var marker = new google.maps.Marker({
                position: { lat: 4.899052, lng: 114.929622 },
                map: map
            })
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAf8E-UcVXRrdPcUVqqEMiQ482T7CmxaAc&callback=initMap"
        async defer></script>

</asp:Content>
