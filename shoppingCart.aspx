<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shoppingCart.aspx.cs" Inherits="shoppingCart" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jewelry Store - Your Cart</title><link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <div>
        <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
        <h1>Your Cart</h1>
        <br />
    </div>
    <form id="form1" runat="server">
    <div>
        <asp:Literal ID="CartBody" runat="server" />
    </div>
    </form>
</body>
</html>
