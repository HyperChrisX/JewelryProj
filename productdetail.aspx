<%@ Page Language="C#" AutoEventWireup="true" CodeFile="productdetail.aspx.cs" Inherits="productdetail" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jewelry Store - Product Detail</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
    <style type="text/css">
        .Ruby_Ring {
            width: 300px;
            height: 298px;
            padding-left: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
    </div>
    </form>
    <p>
        <img alt="Ruby_Ring" class="Ruby_Ring" src="r0052ruby-1.jpg" /></p>
</body>
</html>
