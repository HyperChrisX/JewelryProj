<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jewelry Store - Product Detail</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
    <style type="text/css">
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="errLabel" Enabled="true" runat="server"/>
        <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
        <h1>
            <asp:Label ID="productName" runat="server"></asp:Label>
        </h1>
        <asp:Image AlternateText="Ring_Image" ID="ringImage" runat="server" CssClass="RingImage" />
        <asp:Label ID="descLabel" runat="server" Text="No Item" />
        <br />
        <br />
        <h2>
            <asp:Label ID="price" runat="server" Text="$?.??" />
        </h2>
    </div>
    </form>
</body>
</html>
