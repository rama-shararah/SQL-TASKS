using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace _14_12_2022
{
    public partial class _14_12_2022 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void GetData()
        {
            SqlConnection connec = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = 14-12-2022 ; integrated security=SSPI");

            SqlCommand comand = new SqlCommand("select * from customers", connec);
            connec.Open();

            SqlDataReader sdr = comand.ExecuteReader();
            string table = "<table class='table table-striped'> <tr><th>ID</th> <th>Name</th> <th>Age</th> <th>City</th> <th>Phone</th> <th>img_url</th>";
            while (sdr.Read())
            {

                table += $"<tr><td>{sdr[0]}</td><td>{sdr[1]}</td><td>{sdr[2]}</td><td>{sdr[3]}</td><td>{sdr[4]}</td><td>{sdr[5]}</td></tr>";
                Image image = new Image();
                this.Controls.Add(image);
                image.ImageUrl = (string)sdr[5];
            }
            table += "</table>";
            Label6.Text = table;
            connec.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("data source = DESKTOP-KG1IER4\\SQLEXPRESS; database = 14-12-2022 ; integrated security=SSPI");
            connect.Open();
            string name = TextBox1.Text;
            string age = TextBox2.Text;
            string city = TextBox3.Text;
            string phone = TextBox4.Text;

            string folderPath = Server.MapPath("~/Files/");

            if (!Directory.Exists(folderPath))
            {
                Directory.CreateDirectory(folderPath);
            }

            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            string img = "~/Files/" + Path.GetFileName(FileUpload1.FileName);

            string query = "insert into customers(NAME,AGE,CITY,PhoneNumber,IMG_URL)" + " values ('" + name + "','" + age + "','" + city + "','" + phone + "','" + img + "')";

            SqlCommand command = new SqlCommand(query, connect);
            command.ExecuteNonQuery();
            connect.Close();

            GetData();
        }
    }
}