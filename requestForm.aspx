<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="requestForm.aspx.cs" Inherits="StationaryManagementSystem.requestForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 37%;
        }
        .style2
        {
            width: 123px;
        }
        .style3
        {
            width: 120px;
        }
        .style4
        {
            width: 123px;
            height: 26px;
        }
        .style5
        {
            width: 120px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
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
          <li><a href="Stationary.aspx">Stationaries</a></li>
          <%} %>
          <li  id="active"><a href="requestForm.aspx">Request Form</a></li>
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
            <h2>New Request Form</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Medium"></asp:Label>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Item Code</td>
                        <td class="style3">
                            <asp:DropDownList ID="txtItemCode" runat="server" AutoPostBack="True" 
                                DataSourceID="itemDS" DataTextField="ItemCode" DataValueField="ItemCode" 
                                onselectedindexchanged="txtItemCode_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:LinqDataSource ID="itemDS" runat="server" 
                                ContextTypeName="StationaryManagementSystem.StationaryDBDataContext" 
                                EntityTypeName="" Select="new (ItemCode)" TableName="Items">
                            </asp:LinqDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Item Name</td>
                        <td class="style5">
                            <asp:TextBox ID="txtItemName" runat="server"></asp:TextBox>
                        </td>
                        <td class="style6">
                            </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Item Cost</td>
                        <td class="style5">
                            <asp:TextBox ID="txtCost" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td class="style6">
                            </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Quantity Needed</td>
                        <td align="right" class="style3">
                            <asp:TextBox ID="txtQty" runat="server" Width="54px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtQty" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Superior&#39;s ID</td>
                        <td class="style3">
                            <asp:TextBox ID="txtSId" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtSId" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            &nbsp;</td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" />
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
