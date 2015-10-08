<%@ Page Language="C#" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="aboutus" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jewelry Store - About Us</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <div>
        <uc:navigation ID="navigation" runat="server" />
    </div>
    <br />
    <div>
        <h1>
            About Us
        </h1>
    </div>
        <h2 style="text-align:left; margin-left:15%">Nhia</h2>
        <div style="text-align:right; display:inline; margin-right:15%; margin-left:10px;"><img src="nhia.jpg" alt="Nhia" /></div>
        <p style="text-align:left;margin-left:15%">
            Descriptions go here.
        </p>
  
        <h2 style="text-align:right; margin-right:15%">Christian</h2>
        <div style="text-align:left; display:inline; margin-left:15%; margin-right:10px;"><img src="christian.jpg" alt="Christian"/></div>
        <p style="text-align:right; margin-right:15%">
            Descriptions go here.
        </p>
    </body>
</html>
