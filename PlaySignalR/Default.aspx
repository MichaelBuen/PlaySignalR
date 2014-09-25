<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PlaySignalR.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="/Scripts/jquery-1.6.4.min.js"></script>
    <script src="/Scripts/jquery.signalR-2.1.2.js"></script>
    <script src='<%: ResolveClientUrl("~/signalr/hubs") %>'></script>
</head>
<body>
    
    <input type="text" id="theMessage" />

    <button>Send message</button>

    <div id="messages"></div>

</body>

<script>
    $(function () {
        var tmntHub = $.connection.tmntHub;

        tmntHub.connection.start();

        tmntHub.client.cowabungaToTurtles = function (name, message) {
            
            $('#messages').append("<p>" + name + ": " + message + "</p>");
        };


        $('button').click(function () {
            var text = $('#theMessage').val();            
            tmntHub.server.tellAprilONeil('<%:  Guid.NewGuid()%>', text);            
        });
        

    });
</script>

</html>
