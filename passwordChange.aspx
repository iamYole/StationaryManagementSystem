<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="passwordChange.aspx.cs" Inherits="StationaryManagementSystem.passwordChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 56%;
        }
        .style4
        {
            width: 319px;
        }
        .style5
        {
            width: 104px;
        }
        .style6
        {
            width: 177px;
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
        <ul>
          <li id="active"><a href="home.aspx">Home</a></li>
          <% if (Session["Role"] == "Manager" || Session["Role"] == "Managing Director")
             {%>
          <li><a href="Employees.aspx">Employees</a></li>
          <%} %>
          <% if (Session["Role"] == "Manager" || Session["Role"] == "Managing Director" || Session["Role"] == "Business Manager")
             {%>
          <li><a href="Stationary.aspx">Stationaries</a></li>
          <%} %>
          <li><a href="requestForm.aspx">Request Form</a></li>
          <li><a href="ApplicationsList.aspx">Applications</a></li>
          <li><a href="#">Help</a></li>          
		</ul>
        <hr class="noscreen" />
      </div> 
      <!-- end/ Hlavní navigace -->
      
      <div id="container" class="box">
      
        <!-- Obsah stránek-->
        
          
          <div id="intro">
            <div id="intro-in">

            <p class="intro">
            <b>Welcome 
                <asp:Label ID="userLabel" runat="server" Text="User"></asp:Label><br/>
            Designation: 
                <asp:Label ID="designLabel" runat="server" Text="Role"></asp:Label></b>
            </p>
                <p class="intro">
                    &nbsp;</p>
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            <h2>Password Change</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Medium"></asp:Label>
                </p>

                <br />
                <table class="style1">
                    <tr>
                        <td class="style6">
                            Old Password</td>
                        <td class="style5">
                            <asp:TextBox ID="txtOPword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtOPword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            New Password</td>
                        <td class="style5">
                            <asp:TextBox ID="txtNPword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtNPword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Confirm Password</td>
                        <td class="style5">
                            <asp:TextBox ID="txtCPword" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="style4">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtCPword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                ControlToCompare="txtNPword" ControlToValidate="txtCPword" 
                                ErrorMessage="Passwords must be the same" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:Button ID="Button1" runat="server" Text="Save" onclick="Button1_Click" />
                        </td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                </table>

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
