<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jewelry Store - Home</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
<div>
    <p><img src="Logo_Jewlry.jpg" alt="logo_image" /></p>
    <h1>Jewelry Store</h1>
    <uc:navigation ID="navigation" runat="server" />
</div>
</body>
</html>
