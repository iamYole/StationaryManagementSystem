using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class passwordChange : System.Web.UI.Page
    {
        private DataRepository data = new DataRepository();
        private Employee emp;
        private string empId;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                empId = (string)Session["Employess"];
                emp = data.getEmployee(empId);
                userLabel.Text = emp.FirstName + " " + emp.LastName;
                designLabel.Text = emp.Designation;
            }
            catch
            { Response.Redirect("login.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                emp = data.getEmployee(empId);
                emp.Password = txtCPword.Text;
                data.save();
                msgLabel.Text = "Password Changed Sucessfully";
            }
            catch
            {
                msgLabel.Text = "An UnExpected Error Occured";
            }
        }

    }
}