using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Collections;
using System.Runtime.Remoting.Contexts;

namespace practice15_12
{
    public partial class practice15_12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = practice15-12 ; integrated security=SSPI");
                connect.Open();
                SqlCommand comm = new SqlCommand("select * from City", connect);
                SqlDataAdapter adapt = new SqlDataAdapter(comm);
                DataTable dt = new DataTable();
                adapt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "cityID";
                DropDownList1.DataBind();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            string img = "Files/" + Path.GetFileName(FileUpload1.FileName);

            string name = TextBox1.Text;
            SqlConnection conn = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = practice15-12 ; integrated security=SSPI");
            conn.Open();
            string query = "insert into customer(NAME,CityID,IMAGE) values ('" + name + "','" + DropDownList1.SelectedValue + "','" + img + "')";
            SqlCommand command = new SqlCommand(query, conn);
            command.ExecuteNonQuery();
            Label4.Text = "saved";

            conn.Close();




        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = practice15-12 ; integrated security=SSPI");
            conn.Open();
            HyperLink link = new HyperLink();
            link.Text = "Edit";

            string query2 = "select * from   customer";
            SqlCommand cmd = new SqlCommand(query2, conn);
            SqlDataReader sdr = cmd.ExecuteReader();
            string table = "<table class='table table-striped'> <tr> <th>ID</th><th>NAME</th><th>CITY</th><th>IMAGE</th><th>Edit</th></tr>";
            while (sdr.Read())
            {
                link.NavigateUrl = "page_edit.aspx?id=" + sdr[0];
                table += $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td><img src ={sdr[3]} width=120px; height=100px /></td> <td><a href={link.NavigateUrl}> edit</a>  </td></tr>";
            }

            table += "</table>";
            Label5.Text = table;
            conn.Close();
        }
    }
}