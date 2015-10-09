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
        <uc:navigation ID="navigation" runat="server" /> <!-- navigation -->
    </div>
    <br />
    <div>
        <h1>
            About Us <!-- About us title -->
        </h1>
    </div>
        <h2 style="text-align:left; margin-left:15%">Nhia</h2><!-- Name of the creator -->
        <div style="float:right; margin-right:15%; margin-left:20px; margin-bottom:20px"><img src="aboutPic.jpg" alt="Us. In digital format" /></div> <!-- Images of us -->
        <p style="text-align:left;margin-left:15%"> <!-- Move text to the left -->
            My name is Nhia Yang. I'm a Student at Dunwoody College of Technology and I'll be graduating in the spring of 2016. I decided to create a website
            like this because... It just came into mind. I'm from originally Minnesota, but I moved around. I lived here for my childhood then moved to 
            Kansas for a few years. Then I moved to Michigan during partially of my fifth grade. During my middle school I moved back here and here I am. 
            I had a great adventure. I was about to go into networking, but I notice that I didn't like it anymore because I was about to be force into
            a job that I didn't like. I transfered over to this program... Now I love it. I would like to mention that when I was little I already knew
            what I wanted to be. Well, this program help me get into what I want to be and that is... to be a game creator. So yeah!!!!! Also, Christian
            (See below) is a hugh fan of Microsoft. As for me... I hate Apple!!! (Not really, just the phone).
        </p>
    <br />
        <h2 style="text-align:right; margin-right:15%">Christian</h2> <!-- Name of the creator -->
        <p style="text-align:right; margin-right:15%; margin-left:15%;"> <!-- Move text to the right -->
            My name is Christian Saltness. I am also a student at Dunwoody College of Techology and currently reside in Minnesota. I am 19 years old and have lived here
            all my life. I am a huge geek and fan of technology, and have been a big Microsoft fan for a while. I want to be able to do something involving coding or 
            other web design, networking, programming things and that is how I'e ended up here at Dunwoody. I am also slgihtly interested in cars, but technology is usually
            what I keep the closest eye on, following new announcements in OS, phones, tablets, and more. I have built a few websites in the past, but none are currently
            hosted online. This site is a collaboration between myself and Nhia (see above).
        </p>
    </body>
</html>
