<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newEmployee.aspx.cs" Inherits="StationaryManagementSystem.newEmployee" %>

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
        .style5
        {
            width: 53%;
        }
        .style6
        {
            width: 126px;
        }
        .style7
        {
            width: 158px;
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
                                    CausesValidation="False" onclick="Button1_Click" />
                            </td>
                           <td class="style3">
                                <asp:Button ID="Button2" runat="server" BackColor="#404B4F" BorderStyle="None" 
                                    ForeColor="White" Height="28px" Text="New" Width="80px" 
                                    PostBackUrl="~/newEmployee.aspx" CausesValidation="False" 
                                    Enabled="False" />
                            </td>
                        </tr>
                    </table>
             
            </p>
            
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            <h2>New Employee</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Large" Text="Label"></asp:Label>
                </p>

                <table class="style5">
                    <tr>
                        <td class="style6">
                            Employee ID</td>
                        <td class="style7">
                            <asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtEmpID" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            First Name</td>
                        <td class="style7">
                            <asp:TextBox ID="txtFn" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtFn" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Last Name</td>
                        <td class="style7">
                            <asp:TextBox ID="txtLn" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="txtLn" ErrorMessage="Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            Designation</td>
                        <td class="style7">
                            <asp:DropDownList ID="txtDesig" runat="server">
                                <asp:ListItem>Engineer</asp:ListItem>
                                <asp:ListItem>Manager</asp:ListItem>
                                <asp:ListItem>Business Manager</asp:ListItem>
                                <asp:ListItem>Managing Director</asp:ListItem>
                                <asp:ListItem>System Anaylist</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            <asp:Button ID="Button5" runat="server" onclick="Button5_Click" 
                                Text="Register" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
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

