using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class newItems : System.Web.UI.Page
    {
        private DataRepository data = new DataRepository();
        private Employee emp;
        private Item item;
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

        protected void txtCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            string iCode = txtCode.SelectedValue.ToString().Trim();
            item=data.getItem(iCode);
            txtName.Text = item.ItemName;
            txtDesc.Text = item.Description;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!txtQty.Text.Equals(""))
            {
                try
                {
                    string iCode = txtCode.SelectedValue.ToString().Trim();
                    item = data.getItem(iCode);
                    item.ItemQuantity += Convert.ToInt32(txtQty.Text);
                    data.save();
                    txtDesc.Text = "";
                    txtName.Text = "";
                    txtQty.Text = "";
                    msgLabel.Text = "Stock Updated";
                }
                catch
                {
                    msgLabel.Text = "An Error Occured";
                }
            }
            else
            {
                msgLabel.Text = "Pls Enter a Numeric Quantity";
            }
        }

    }
}