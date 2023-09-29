using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class newEmployee : System.Web.UI.Page
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
                msgLabel.Text = "";
                generateID();
            }
            catch
            { Response.Redirect("login.aspx"); }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employees.aspx");
        }
        private void generateID()
        {
            Random num = new Random();
            int id = num.Next();
            string eid = "HMT" + id;
            txtEmpID.Text = eid.Substring(0, 8);
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                Employee emp = new Employee()
                {
                    EmployeeID=txtEmpID.Text,
                    FirstName=txtFn.Text,
                    LastName=txtLn.Text,
                    Password="password",
                    Designation=txtDesig.SelectedItem.Text
                };
                data.addEmpl(emp);
                data.save();
                txtDesig.Text = "";
                txtFn.Text = "";
                txtLn.Text = "";
                txtDesig.SelectedIndex = 0;
                msgLabel.Text = "Employee Added Sucessfully";
                
            }
            catch(Exception ex)
            {
                //msgLabel.Text = ex.Message.ToString();
                msgLabel.Text = "An UnExpected Error Occured";
            }
        }
    }
}