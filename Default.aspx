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
    <uc:navigation ID="navigation" runat="server" />
    <h1>Our Products</h1>
</div>
    <div class="prod">
        <ul class="prodlist">
                <li class="title">This is just a test</li> <!-- title -->
            
                <li class="product">The rest are products</li> <!-- product -->    
                <li class="product">The rest are products</li> <!-- product -->   
                <li class="product">The rest are products</li> <!-- product -->
            
                <li class="title">This is just a test</li> <!-- title -->

                <li class="product">The rest are products</li> <!-- product -->
                <li class="product">The rest are products</li> <!-- product -->    
                <li class="product">The rest are products</li> <!-- product -->
                            
                <li class="title">This is just a test</li> <!-- title -->
                
                <li class="product">The rest are products</li> <!-- product -->
                <li class="product">The rest are products</li> <!-- product -->
                <li class="product">The rest are products</li> <!-- product -->

        </ul>
    </div>
     <p><img src="image_1.png" alt="image_1" class="image_1" /></p>  
    <h1 class="Jewelry_1">Random Name</h1>
    <p style="text-align:left; margin-left:15%; margin-right:15%; margin-top:6%;">
        Lorizzle ipsum we gonna chung yippiyo gangster, consectetizzle adipiscing check it out. Mofo sapien velizzle, that's the
         shizzle volutpizzle, suscipit shizzlin dizzle, gravida vizzle, arcu. Pellentesque eget yippiyo. Sizzle erizzle.
        Price = $$$
    </p>
    <br />
    <p><img src="image_2.png" alt="image_2" class="image_1" /></p> 
    <h1 class="Jewelry_1">Random Name</h1>
    <p style="text-align:right; margin-right:15%; margin-left:15%; margin-top:6%;">
        Lorizzle ipsum we gonna chung yippiyo gangster, consectetizzle adipiscing check it out. Mofo sapien velizzle, that's the
         shizzle volutpizzle, suscipit shizzlin dizzle, gravida vizzle, arcu. Pellentesque eget yippiyo. Sizzle erizzle.
        Price = $$$
    </p>
</body>
</html>
