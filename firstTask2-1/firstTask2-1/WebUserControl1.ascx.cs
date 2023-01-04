using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace firstTask2_1
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["vote"] != null)
            {
                RadioButtonList1.Visible = false;
                Button1.Visible = false;
                div1.Visible = true;

                SqlConnection con = new SqlConnection("data source= DESKTOP-KG1IER4\\SQLEXPRESS; database=controlTask; integrated security=SSPI");
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from voting", con);
                SqlDataReader sdd = cmd.ExecuteReader();
                while (sdd.Read())
                {
                    if (Convert.ToInt32(sdd[0]) == 1)
                    {
                        Session["Exn"] = Convert.ToInt32(sdd[2]);
                    }
                    else if (Convert.ToInt32(sdd[0]) == 2)
                    {
                        Session["Vgn"] = Convert.ToInt32(sdd[2]);
                    }
                    else if (Convert.ToInt32(sdd[0]) == 3)
                    {
                        Session["Gn"] = Convert.ToInt32(sdd[2]);
                    }
                    else if (Convert.ToInt32(sdd[0]) == 4)
                    {
                        Session["Pn"] = Convert.ToInt32(sdd[2]);
                    }

                }

                con.Close();

                double ee = Convert.ToInt32(Session["Exn"]);
                double vgvg = Convert.ToInt32(Session["Vgn"]);
                double gg = Convert.ToInt32(Session["Gn"]);
                double pp = Convert.ToInt32(Session["Pn"]);
                double tot = ee + vgvg + gg + pp;
                Session["total"] = Convert.ToString(tot);


                ///////////////////////////
                double xxe = (ee / tot);
                int exavg = Convert.ToInt32(xxe * 100);
                exp.Width = exavg + '%';
                exp.Text = Convert.ToString(exavg) + '%';
                //////
                double xxv = (vgvg / tot);
                int vavg = Convert.ToInt32(xxv * 100);
                vgp.Width = vavg + '%';
                vgp.Text = Convert.ToString(vavg) + '%';
                //////
                double xxg = (gg / tot);
                int gavg = Convert.ToInt32(xxg * 100);
                gp.Width = gavg + '%';
                gp.Text = Convert.ToString(gavg) + '%';
                //////
                double xxp = (pp / tot);
                int pavg = Convert.ToInt32(xxp * 100);
                ppp.Width = pavg + '%';
                ppp.Text = Convert.ToString(pavg) + '%';

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie k = new HttpCookie("vote");
            k.Values["vote"] = "voted";
            k.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(k);

            string vv = RadioButtonList1.SelectedValue;
            int ivv = Convert.ToInt32(vv);
            SqlConnection con = new SqlConnection("data source= DESKTOP-KG1IER4\\SQLEXPRESS; database=controlTask; integrated security=SSPI");
            con.Open();
            string vvv = Convert.ToString(Session["num"]);
            int ivvr = Convert.ToInt32(vvv);
            ivvr++;

            SqlCommand ccc = new SqlCommand("Update voting set number='" + ivvr + "' where id='" + ivv + "'", con);
            ccc.ExecuteNonQuery();
            con.Close();


        }

        protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string vv = RadioButtonList1.SelectedValue;
            int ivv = Convert.ToInt32(vv);
            SqlConnection connect = new SqlConnection("data source= DESKTOP-KG1IER4\\SQLEXPRESS; database=controlTask; integrated security=SSPI");
            connect.Open();
            SqlCommand cmd = new SqlCommand("select number from voting where id='" + ivv + "'", connect);
            SqlDataReader sdd = cmd.ExecuteReader();
            sdd.Read();
            string vvr = Convert.ToString(sdd[0]);
            Session["num"] = vvr;
            Session["iid"] = ivv;

            connect.Close();
        }
    }
}