<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newStock.aspx.cs" Inherits="StationaryManagementSystem.newStock" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Stationaries</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 42%;
        }
        .style2
        {
            width: 118px;
        }
        .style3
        {
            width: 146px;
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
          <li><a href="home.aspx">Home</a></li>
          <% if (Session["Role"] == "Manager" || Session["Role"] == "Managing Director")
             {%>
          <li><a href="Employees.aspx">Employees</a></li>
          <%} %>
          <% if (Session["Role"] == "Manager" || Session["Role"] == "Managing Director" || Session["Role"] == "Business Manager")
             {%>
          <li  id="active"><a href="Stationary.aspx">Stationaries</a></li>
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
            <br/>
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            <h2>Add New Item(s)</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Medium"></asp:Label>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Item Code</td>
                        <td class="style3">
                            <asp:TextBox ID="txtCode" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtCode" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Item Name</td>
                        <td class="style3">
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Cost</td>
                        <td class="style3">
                            <asp:TextBox ID="txtCost" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtCost" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2" valign="top">
                            Description</td>
                        <td class="style3">
                            <asp:TextBox ID="txtDesc" runat="server" Height="100px" TextMode="MultiLine" 
                                Width="194px"></asp:TextBox>
                        </td>
                        <td valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="txtDesc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add" />
                        </td>
                        <td>
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

