using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Cache;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;


namespace _22_Task
{
    public partial class Admin : System.Web.UI.Page
    {

        task22Entities db = new task22Entities();

        protected void Page_Load(object sender, EventArgs e)
        {




            var q = (from pd in db.Cities
                     join od in db.Customers on pd.CityId equals od.CityId
                     select new
                     {
                         od.CustomerId,
                         od.CustomerName,
                         od.Age,
                         pd.City1,
                         od.Phone,
                         od.Email,
                         od.Photo,

                     }).ToList();

            GridView1.DataSource = q;
            GridView1.DataBind();



            var count = (from pd in db.Customers select pd).Count();
            Label1.Text = count.ToString();


            var ct = db.Customers.ToList();
            var avg = ct.Average(s => s.Age);
            Label2.Text = avg.ToString();


            var max = ct.Max(s => s.Age);
            Label3.Text = max.ToString();


            for (int i = 0; i < count; i++)
            {
                var d = GridView1.Rows[i].Cells[7].Text;

                GridView1.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='{d}' width='50px'>");
            }


        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text != "")
            {
                GridView1.Visible = false;

                var txt = TextBox5.Text;

                var search = (from pd in db.Cities
                              join od in db.Customers on pd.CityId equals od.CityId
                              where od.CustomerName.Contains(txt)
                              select new
                              {
                                  od.CustomerId,
                                  od.CustomerName,
                                  od.Age,
                                  pd.City1,
                                  od.Phone,
                                  od.Email,
                                  od.Photo,

                              }).ToList();
                GridView2.DataSource = search;
                GridView2.DataBind();

                for (int i = 0; i < GridView2.Rows.Count; i++)
                {
                    var d = GridView2.Rows[i].Cells[7].Text;

                    GridView2.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='{d}' width='50px'>");
                }
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox6.Text != "")
            {
                GridView1.Visible = false;

                var txt = TextBox6.Text;
                var intt = Convert.ToInt32(txt);

                var search = (from pd in db.Cities
                              join od in db.Customers on pd.CityId equals od.CityId
                              where od.CustomerId.Equals(intt)
                              select new
                              {
                                  od.CustomerId,
                                  od.CustomerName,
                                  od.Age,
                                  pd.City1,
                                  od.Phone,
                                  od.Email,
                                  od.Photo,

                              }).ToList();
                GridView2.DataSource = search;
                GridView2.DataBind();
                for (int i = 0; i < GridView2.Rows.Count; i++)
                {
                    var d = GridView2.Rows[i].Cells[7].Text;

                    GridView2.Rows[i].Cells[7].Text = HttpUtility.HtmlDecode($"<img src='{d}' width='50px'>");



                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("createCustomer.aspx");
        }


    }
}