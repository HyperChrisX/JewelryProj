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
    <table>
        <tr>
            <td align="left" valign="top">
                <asp:Panel ID="emailForm" runat="server">
                <table width="500" border="0" cellpadding="2" cellspacing="0" class="text">
                    <tr>
                        <td width="64" align="right">
                            <asp:RequiredFieldValidator ID="nameValidator" runat="server" ErrorMessage="**" ControlToValidate="senderName">**</asp:RequiredFieldValidator>Sender's Name:
                        </td>
                        <td width="294">
                            <asp:TextBox ID="senderName" runat="server" Width="255px" />
                        </td>
                    </tr>
                    <tr>
                        <td width="64" align="right">
                            <asp:RequiredFieldValidator ID="fromValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                ControlToValidate="senderEmail">**</asp:RequiredFieldValidator>Sender's E-mail:
                        </td>
                        <td width="294">
                            <asp:TextBox ID="senderEmail" runat="server" Width="255px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right">
                            <asp:RequiredFieldValidator ID="subjectValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                                ControlToValidate="subject">**</asp:RequiredFieldValidator>Subject:
                        </td>
                        <td>
                            <asp:TextBox ID="subject" runat="server" Width="255px" />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" valign="top">
                        <asp:RequiredFieldValidator ID="messageValidator" runat="server" ErrorMessage="RequiredFieldValidator"
                            ControlToValidate="message">**</asp:RequiredFieldValidator>Message:</td>
                        <td colspan="2">
                            <asp:TextBox ID="message" runat="server" Width="255px" TextMode="MultiLine" Height="80px" />
                        </td>
                    </tr>
                    <tr>
                        <td height="27" align="left">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0" class="text">
                                <tr>
                                    <td width="68">
                                        <asp:Button ID="submitImage" runat="server" Text="Submit"></asp:Button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </asp:Panel>
                <asp:Literal ID="sentEmail" runat="server" Visible="False">
                </asp:Literal>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
