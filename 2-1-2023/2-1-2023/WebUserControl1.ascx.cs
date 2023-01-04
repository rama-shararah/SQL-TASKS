using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2_1_2023
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie k = new HttpCookie("vote");
            k.Values.Add("voted", RadioButtonList1.SelectedValue);
            k.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(k);
            RadioButtonList1.Visible = false;
            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;

        }
    }
}