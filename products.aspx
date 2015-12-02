<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="products.aspx.cs" Inherits="products" %>
<%@ Register TagPrefix="uc" TagName="navigation" Src="~/navigation.ascx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Jewelry Store - Products</title>
    <link rel="Stylesheet" href="StyleSheet.css" type="text/css" />
</head>
<body>
<div>
    <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
    <form id="form1" runat="server">
    <div>
      <h1>Our Products</h1> <!-- title of the whole page -->
      SEARCH: <asp:TextBox ID="searchTerm" runat="server" />
      <asp:Button ID="searchBtn" runat="server"
        Text="Search" OnClick="searchBtn_OnClick" />
        <br /> By Default this search will return all matches to your terms.
      <br />
      <asp:Label ID="statusL" runat="server" />
          <div class="grid">
              <asp:GridView ID="ProductsGrid" runat="server" AutoGenerateColumns="false" OnSortCommand="dgSearchList_SortClick">  
                  <Columns>
                      <asp:TemplateField HeaderText ="Gemstone">
                          <ItemTemplate>
                              <asp:HyperLink ID="Types" NavigateUrl='<%#"./productdetail.aspx?Types="+Eval("Types") %>' Text='<%# Eval("Types") %>' runat="server"/>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField DataField="Price" HeaderText="Price" />
                  </Columns>
              </asp:GridView>
          </div>
      </div>
    </form>
</div>
</body>
</html>
