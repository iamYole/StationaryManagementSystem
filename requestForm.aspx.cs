using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class requestForm : System.Web.UI.Page
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
            }
            catch
            { Response.Redirect("login.aspx"); }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                emp=data.getEmployee(empId);
                Application request = new Application()
                {
                    ItemCode=txtItemCode.SelectedValue.ToString(),
                    Itemqty=Convert.ToInt32(txtQty.Text),
                    RequestDate=DateTime.Now,
                    superiorId=txtSId.Text,
                    emyID=emp.EmployeeID,
                    Status="PENDING",
                    Remarks=""
                };
                data.newRequest(request);
                                
                data.save();
                txtCost.Text = "";
                txtItemName.Text = "";
                txtQty.Text = "";
                txtSId.Text = "";
                msgLabel.Text = "Request Has been Submitted for Approval";
            }
            catch(Exception ex)
            {
                msgLabel.Text = ex.Message;
                //msgLabel.Text = "An Error Occured";
            }
        }

        protected void txtItemCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            string iCode = txtItemCode.SelectedValue.ToString();
            item = data.getItem(iCode);
            txtItemName.Text = item.ItemName;
            txtCost.Text = item.ItemCost.ToString();
        }

    }
}