<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="StationaryManagementSystem.home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home</title>
     <link href="css/screen.css" type="text/css" rel="stylesheet" media="screen,projection" />
    <link rel="stylesheet" media="print" type="text/css" href="css/print.css" />
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
            <br/>
                <p class="intro">
                    <asp:Button ID="Button1" runat="server" BackColor="#4D5960" 
                        BorderColor="#4F5C65" ForeColor="White" Text="Change Password" 
                        onclick="Button1_Click" />
            </p>
            </div>
          </div>
          <div id="obsah" class="content box">
          <div class="in">
            <div class="shadow">
            <h2>Applications For Approval</h2>
                <p>
                    <asp:Label ID="msgLabel" runat="server" Font-Bold="True" Font-Names="Georgia" 
                        Font-Size="Medium"></asp:Label>
                </p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ApprovalListDS" 
                        Width="753px" EmptyDataText="No Item To Display">
                        <Columns>
                            <asp:BoundField DataField="ItemCode" HeaderText="Item Code" 
                                SortExpression="ItemCode" />
                            <asp:BoundField DataField="Itemqty" HeaderText="Quantity" 
                                SortExpression="Itemqty" />
                            <asp:TemplateField HeaderText="Date Requested" SortExpression="RequestDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RequestDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" 
                                        Text='<%# Bind("RequestDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="emyID" HeaderText="Employee ID" 
                                SortExpression="emyID" />
                            <asp:BoundField DataField="Status" HeaderText="Status" 
                                SortExpression="Status" />
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <HeaderStyle Font-Bold="True" Font-Names="Georgia" Font-Size="Medium" 
                            HorizontalAlign="Center" />
                        <RowStyle HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#4D5960" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                    <asp:LinqDataSource ID="ApprovalListDS" runat="server" 
                        ContextTypeName="StationaryManagementSystem.StationaryDBDataContext" 
                        EntityTypeName="" TableName="Applications" 
                        Where="superiorId == @superiorId &amp;&amp; Status != @Status">
                        <WhereParameters>
                            <asp:SessionParameter Name="superiorId" SessionField="Employess" 
                                Type="String" />
                            <asp:Parameter DefaultValue="APPROVED" Name="Status" Type="String" />
                        </WhereParameters>
                    </asp:LinqDataSource>
                </p>
                <br/><br/>
                <asp:Button ID="Button2" runat="server" Text="View Details" BackColor="#4D5960" 
                    BorderColor="#4E595D" ForeColor="White" onclick="Button2_Click" />
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
