using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _22_Task
{
    public partial class createCustomer : System.Web.UI.Page
    {
        task22Entities db = new task22Entities();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                var c = from s in db.Cities select s;
                DropDownList1.DataSource = c.ToList();
                DropDownList1.DataTextField = "City1";
                DropDownList1.DataValueField = "CityId";
                DropDownList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                Customer customer = new Customer
                {
                    CustomerName = TextBox1.Text,
                    Age = Convert.ToInt32(TextBox2.Text),
                    CityId = Convert.ToInt32(DropDownList1.SelectedValue),
                    Phone = Convert.ToInt32(TextBox3.Text),
                    Email = TextBox4.Text,
                    Photo = "pic/" + FileUpload1.FileName,

                };

                db.Customers.Add(customer);
                db.SaveChanges();
                FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("pic"), FileUpload1.FileName));

                Response.Redirect("Admin.aspx");
            }
        }
    }
}