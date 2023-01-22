using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace _5_1Task
{
    public partial class task1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["Name"].DefaultValue = TextBox1.Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = TextBox2.Text;
            SqlDataSource1.InsertParameters["Email"].DefaultValue = TextBox3.Text;
            FileUpload1.SaveAs(System.IO.Path.Combine(Server.MapPath("pic"), FileUpload1.FileName));
            SqlDataSource1.InsertParameters["Photo"].DefaultValue = "~/pic/" + FileUpload1.FileName;
            SqlDataSource1.Insert();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload2") as FileUpload;
            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("pic"), fileUpload.FileName));
            SqlDataSource1.UpdateParameters["Photo"].DefaultValue = "~/pic/" + fileUpload.FileName;
            SqlDataSource1.Update();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            TableCell cell = GridView1.Rows[e.RowIndex].Cells[4];
            TableCell cell2 = GridView1.Rows[e.RowIndex].Cells[2];
            Session["Name"] = cell2.Text;
            string path = Server.MapPath($"pic/{cell.Text}");
            File.Delete(path);
        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            string name = Session["Name"].ToString();
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"successalert(\"{name}\");", true);
        }
    }
}