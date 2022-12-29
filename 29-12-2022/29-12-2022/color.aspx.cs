using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _29_12_2022
{
    public partial class color : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = DateTime.Now.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie k = new HttpCookie("color");
            k.Values.Add("col", DropDownList1.SelectedValue);
            k.Expires = DateTime.Now;
            Response.Cookies.Add(k);
            if (Request.Cookies["color"] != null)
            {
                if (Request.Cookies["color"]["col"] == "green")
                {
                    Label1.ForeColor = System.Drawing.Color.Green;
                }
                else if (Request.Cookies["color"]["col"] == "blue")
                {
                    Label1.ForeColor = System.Drawing.Color.Blue;
                }
                else if (Request.Cookies["color"]["col"] == "red")
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Black;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
        }
    }
}