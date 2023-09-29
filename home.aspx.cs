using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class home : System.Web.UI.Page
    {
        private DataRepository data = new DataRepository();
        private Employee emp;
        private string empId;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                empId=(string)Session["Employess"];
                emp = data.getEmployee(empId);
                userLabel.Text =emp.FirstName + " " + emp.LastName;
                designLabel.Text = emp.Designation;
                msgLabel.Text = "";
            }
            catch
            { Response.Redirect("login.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("passwordChange.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Session["key"] = GridView1.SelectedDataKey.Value.ToString();
                Response.Redirect("RequestDetails.aspx");
            }
            catch
            {
                msgLabel.Text = "Make a selection first";
            }
        }
    }
}