using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StationaryManagementSystem
{
    public class DataRepository
    {
        private StationaryDBDataContext db = new StationaryDBDataContext();

        public void addEmpl(Employee employee)
        {
            db.Employees.InsertOnSubmit(employee);
        }
        public void addItem(Item item)
        {
            db.Items.InsertOnSubmit(item);
        }
        public void newRequest(Application request)
        {
            db.Applications.InsertOnSubmit(request);
        }


        public Employee getEmployee(string code)
        {
            return db.Employees.SingleOrDefault(e => e.EmployeeID == code);
        }
        public Item getItem(string code)
        {
            return db.Items.SingleOrDefault(i => i.ItemCode == code);
        }
        public Application getRequests(int code)
        {
            return db.Applications.SingleOrDefault(r=> r.id == code);
        }

        public void save()
        {
            db.SubmitChanges();
        }
    }
}