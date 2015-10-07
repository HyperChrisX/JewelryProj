<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jewelry Store - Contact Us</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
    <form id="mailForm" runat="server">
    <div>
        <uc:navigation ID="navigation" runat="server" />
    </div>
    <h2>Send us a message below!</h2>
    <h4 style="text-align:center;font-style:italic;"><a style="color:red;">**</a> indicates a required field</h4>
        <div>
            <asp:Panel ID="emailForm" runat="server">
                    <br />
                        <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="**" ControlToValidate="senderName">**</asp:RequiredFieldValidator>Sender's Name:
                        <asp:TextBox ID="senderName" runat="server" Width="255px" />
                    <br /><br />
                        <asp:RequiredFieldValidator ID="fromValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="senderEmail">**</asp:RequiredFieldValidator>Sender's E-mail:
                        <asp:TextBox ID="senderEmail" runat="server" Width="255px" />
                    <br /><br />
                        <asp:RequiredFieldValidator ID="subjectValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="subject">**</asp:RequiredFieldValidator>Subject:
                        <asp:TextBox ID="subject" runat="server" Width="255px" />
                    <br /><br />
                        <asp:RequiredFieldValidator ID="messageValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="message">**</asp:RequiredFieldValidator>Message:
                        <asp:TextBox ID="message" runat="server" Width="255px" TextMode="MultiLine" Height="80px" />
                    <br /><br />
                        <asp:Button ID="submitImage" runat="server" Text="Submit"></asp:Button>
            </asp:Panel>
            <asp:Literal ID="sentEmail" runat="server" Visible="False">
            </asp:Literal>
        </div>
    </form>
</body>
</html>
