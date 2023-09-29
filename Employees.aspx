<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="StationaryManagementSystem.Employees" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Employees</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 30%;
            height: 44px;
        }
        .style2
        {
            width: 70px;
        }
        .style3
        {
            width: 55px;
            text-align: center;
        }
        .style4
        {
            width: 76px;
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
          <% if (Session["Role"] == "Manager" || Session["Role"].Equals("Managing Director"))
             {%>
          <li  id="active"><a href="Employees.aspx">Employees</a></li>
          <%} %>
          <% if (Session["Role"] == "Manager" || Session["Role"].Equals("Managing Director") || Session["Role"] == "Business Manager")
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
                <asp:Label ID="designLabel" runat="server" Text="Role"></asp:Label></b><br/>
                
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                <asp:Button ID="Button1" runat="server" BackColor="#3D484E" BorderStyle="None" 
                                    ForeColor="White" Height="28px" Text="View" Width="77px" 
                                    CausesValidation="False" Enabled="False" />
                            </td>
                           <td class="style3">
                                <asp:Button ID="Button2" runat="server" BackColor="#404B4F" BorderStyle="None" 
                                    ForeColor="White" Height="28px" Text="New" Width="80px" 
                                    CausesValidation="False" onclick="Button2_Click" />
                            </td>                         
                        </tr>
                    </table>
             
            </p>
            
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
           <h2>Available Stationaries</h2>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataSourceID="allEmployess" Width="561px" 
                        EmptyDataText="No Item To Display">
                        <Columns>
                            <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" ReadOnly="True" 
                                SortExpression="EmployeeID" />
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" ReadOnly="True" 
                                SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" ReadOnly="True" 
                                SortExpression="LastName" />
                            <asp:BoundField DataField="Designation" HeaderText="Designation" 
                                ReadOnly="True" SortExpression="Designation" />
                        </Columns>
                        <EditRowStyle HorizontalAlign="Center" />
                        <HeaderStyle Font-Bold="True" Font-Size="Medium" HorizontalAlign="Center" 
                            VerticalAlign="Bottom" />
                        <RowStyle HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="allEmployess" runat="server" 
                        ContextTypeName="StationaryManagementSystem.StationaryDBDataContext" 
                        EntityTypeName="" OrderBy="EmployeeID" 
                        Select="new (EmployeeID, FirstName, LastName, Designation)" 
                        TableName="Employees">
                    </asp:LinqDataSource>
                </p> 
           
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

