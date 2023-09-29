using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class login : System.Web.UI.Page
    {

        private DataRepository data = new DataRepository();
        private Employee emp;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                emp = data.getEmployee(txtUsername.Text.Trim());

                if (emp.Password.Trim().Equals(txtPword.Text.Trim()))
                {
                    Session["Employess"] = emp.EmployeeID.Trim();
                    Session["Role"] = emp.Designation.Trim();
                    Response.Redirect("home.aspx");
                }
                else
                {
                    msgLabel.Text = "Invalid Username/Password";
                }
            }
            catch 
            {
                msgLabel.Text = "Invalid Username/Password";
            }
        }
    }
}