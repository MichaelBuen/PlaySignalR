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
        var chat = $.connection.usapHub;

        chat.connection.start(function () { });
        
        console.log(chat);

        chat.client.receive = function (name, message) {
            
            $('#messages').append(name + ": " + message + "<br/>");
        };


        $('button').click(function () {
            var text = $('#theMessage').val();
            console.log(text);
            chat.server.distribute('<%:  Guid.NewGuid()%>',text);            
        });
        

    });
</script>

</html>
