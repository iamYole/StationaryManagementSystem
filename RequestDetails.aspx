<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestDetails.aspx.cs" Inherits="StationaryManagementSystem.RequestDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
    <style type="text/css">
        .style1
        {
            width: 46%;
        }
        .style2
        {
            width: 149px;
        }
        .style3
        {
            width: 212px;
        }
        .style4
        {
            width: 162px;
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
          <li id="active"><a href="home.aspx">Home</a></li>
          <li><a href="Employees.aspx">Employees</a></li>
          <li><a href="Stationary.aspx">Stationaries</a></li>
          <li><a href="requestForm.aspx">Request Form</a></li>
          <li><a href="ApplicationsList.aspx">Applications</a></li>
          <li><a href="#">Help</a></li>          
		</ul>
        <hr class="noscreen" />--%>
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
                <p class="intro">
                    <asp:Button ID="Button5" runat="server" BackColor="#59656C" BorderStyle="None" 
                        ForeColor="White" onclick="Button5_Click" Text="Back" Width="74px" />
                </p>
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            <h2>Applications Details</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Medium"></asp:Label>
                </p>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Item Code</td>
                        <td class="style3">
                            <asp:TextBox ID="txtCode" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Item Name</td>
                        <td class="style3">
                            <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Requested Quantity</td>
                        <td class="style3">
                            <asp:TextBox ID="txtRQty" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Available Quantity</td>
                        <td class="style3">
                            <asp:TextBox ID="txtAQty" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Date Requested</td>
                        <td class="style3">
                            <asp:TextBox ID="txtRDate" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Employee Id</td>
                        <td class="style3">
                            <asp:TextBox ID="txtEmpID" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Full Name</td>
                        <td class="style3">
                            <asp:TextBox ID="txtFN" runat="server" ReadOnly="True"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style2" valign="top">
                            Remark</td>
                        <td class="style3">
                            <asp:TextBox ID="txtRemarks" runat="server" Height="85px" TextMode="MultiLine" 
                                Width="205px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>                    
                </table>

                <table class="style1">
                    <tr>
                        <td class="style4">
                            <asp:Button ID="Button3" runat="server" BackColor="#4D5960" Font-Bold="True" 
                                ForeColor="White" onclick="Button3_Click" Text="APPROVE" Width="154px" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" BackColor="#4D5960" Font-Bold="True" 
                                ForeColor="White" onclick="Button4_Click" Text="Reject" Width="157px" />
                        </td>
                    </tr>
                </table>

                <br/><br/>
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
