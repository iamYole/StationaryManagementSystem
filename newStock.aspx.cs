using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class newStock : System.Web.UI.Page
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
            }
            catch
            { Response.Redirect("login.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Item newItem = new Item()
                {
                    ItemCode=txtCode.Text,
                    ItemName=txtName.Text,
                    ItemCost=Convert.ToDouble(txtCost.Text),
                    ItemQuantity=0,
                    Description=txtDesc.Text
                };
                data.addItem(newItem);
                data.save();
                txtCode.Text = "";
                txtName.Text = "";
                txtCost.Text = "";
                txtDesc.Text = "";
                msgLabel.Text = "Item Added Sucessfully";
            }
            catch
            {
                msgLabel.Text = "An Unecpected Error Occoured";
            }
        }
    }
}