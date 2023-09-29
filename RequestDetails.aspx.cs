using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StationaryManagementSystem
{
    public partial class RequestDetails : System.Web.UI.Page
    {
        private DataRepository data = new DataRepository();
        private Employee emp;
        private Application request;
        private Item item;
        private string empId;
        private int code;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                empId = (string)Session["Employess"];
                code=Convert.ToInt32(Session["key"]);
                emp = data.getEmployee(empId);
                userLabel.Text = emp.FirstName + " " + emp.LastName;
                designLabel.Text = emp.Designation;
                msgLabel.Text = "";
                loadFields(code);
            }
            catch
            { Response.Redirect("login.aspx"); }
        }

        private void loadFields(int code)
        {
            request = data.getRequests(code);
            txtCode.Text = request.ItemCode;
            txtName.Text = request.Item.ItemName;
            txtRQty.Text = request.Itemqty.ToString();
            txtAQty.Text = request.Item.ItemQuantity.ToString();
            txtRDate.Text = request.RequestDate.ToShortDateString();
            txtEmpID.Text = request.emyID;
            txtFN.Text = request.Employee.FirstName + " " + request.Employee.LastName;

            if (request.Itemqty > request.Item.ItemQuantity)
            {
                txtRemarks.Text = "Can't Approve. Not enough Stock Available !!!";
                Button3.Enabled = false;
            }
            

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                request = data.getRequests(code);
                request.Status = "APPROVED";
                request.ApproveDate = DateTime.Now;
                request.Remarks = txtRemarks.Text;

                item = data.getItem(request.ItemCode);
                item.ItemQuantity -= request.Itemqty;

                data.save();
                Response.Redirect("home.aspx");
            }
            catch
            {
                msgLabel.Text = "An Error Occoured";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                request = data.getRequests(code);
                request.Status = "REJECTED";
                data.save();
                Response.Redirect("home.aspx");
            }
            catch
            {
                msgLabel.Text = "An Error Occured";
            }
        }
    }
}