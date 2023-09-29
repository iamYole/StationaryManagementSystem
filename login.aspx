<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="StationaryManagementSystem.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Online Stationary Management Sys</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 35%;
        }
        .style2
        {
            width: 107px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <!-- Layout stránek -->
    <div id="layout">
      
      <!-- Hlavička -->
      <div id="header">
        
        <h1 id="logo"><a href="index.aspx" title="Nature Theme">HMT Technologies</a></h1>
        <hr class="noscreen" />   
               
       
        <!-- Rychlá navigace -->
        <p class="noscreen noprint">
          <em>Rychlá navigace: <a href="#obsah">obsah</a>, <a href="#nav">navigace</a>.</em>
        </p>
    
      </div>
      <!-- end/ Hlavička -->
      
      <hr class="noscreen" />
      
      <!-- Hlavní navigace -->
      <div id="nav" class="box">
          <%--<ul>
          <li id="active"><a href="index.aspx">Home</a></li>
          <li><a href="#">About us</a></li>          
		    <li><a href="#">Links</a></li>
		    <li><a href="#">Photos</a></li>
		    <li><a href="#">Contacts</a></li>
				</ul>
        <hr class="noscreen" />--%>
      </div> 
      <!-- end/ Hlavní navigace -->
      
      <div id="container" class="box">
      
        <!-- Obsah stránek-->
        
          
          <div id="intro">
            <div id="intro-in">
            <h2>Login</h2>
            <p class="intro">
            
            </p>
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            
            <img src="./img/image.jpg" alt="image.jpg" title="image.jpg" class="thumb" />
           

            <p>
                <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                    Text="Pls Enter Your Login Details"></asp:Label>
                </p>
              <table class="style1">
                  <tr>
                      <td class="style2">Username</td>
                      <td>
                          <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                              ControlToValidate="txtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2">
                          Password</td>
                      <td>
                          <asp:TextBox ID="txtPword" runat="server" TextMode="Password"></asp:TextBox>
                      </td>
                      <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                              ErrorMessage="*" ForeColor="Red" ControlToValidate="txtPword"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td class="style2">
                          &nbsp;</td>
                      <td>
                          <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                        </td>
                          <td></td>                        
                      
                  </tr> 
                                   
              </table>
              <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
                          <br />
               </div>
            
            <div class="clear"></div>
          
          </div>
        </div>
        <!-- end/ Obsah stránek-->
        
  
      
      </div>
      
      <div id="footer" class="shadow">
        <div class="f-left">Copyright © 2011 <span lang="EN-IN">HMT Technologies</span></div>
          <%--<div class="f-right">Designed by <a href="http://www.davidkohout.cz">David Kohout</a> | Our tip: <a title="spodní prádlo" href="http://www.spodnipradlo.org/">Spodni pradlo</a></div>--%>
      </div>
    </div>
    <!-- end/ Layout stránek -->
    </form>
</body>
</html>
