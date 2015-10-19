<%@ Page Language="C#" AutoEventWireup="true" CodeFile="game.aspx.cs" Inherits="diversion" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jewelry Store - Game</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
    <script type="text/javascript" language="javascript">
        <!-- Begin
        var total = 0
        var play = false
        function display(element) {
        var now = new Date()
        if (!play) {
        play = true
        startTime = now.getTime()
        }
        if (now.getTime() - startTime > 20000) {
        element.checked = !element.checked
        return
        }
         if (element.checked)
        total++
        else
        total--
        element.form.num.value = total
        }
        function restart(form) {
        total = 0
        play = false
        for (var i = 1; i <= 100; ++i) {
         form.elements[i].checked = false
           }
        }
        // End -->
    </script>
</head>
<body>
    <div>
        <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
    </div>
    <h1 style="text-align:center;">A Fun Game</h1>
    <p style="text-align:center;">Test your skill.  How many boxes can you check in 20 seconds?</p>
    <%
        // Begin game
        Response.Write("<form><div style='text-align: center;'>");
        Response.Write("<input type='text[ value='0' name='num' ");
        Response.Write("size='10' onFocus='this.blur()'><br />");
        Response.Write("<hr size='1' width='40%'>");
        for (var i = 0; i < 10; ++i) {
            for (var j = 0; j < 10; ++j) {
                Response.Write("<input type='checkbox' onClick='display(this)'>");
            }
            Response.Write("<br />");
        }
        Response.Write("<hr size='1' width='40%'>");
        Response.Write("<input type='button' value='Restart' onClick='restart(this.form)'>");
        Response.Write("</div></form>");
        // End
    %>
</body>
</html>
