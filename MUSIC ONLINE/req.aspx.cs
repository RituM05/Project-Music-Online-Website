using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label9.Text = "";
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        {
            //---  SQL INSERT DATA CONNECTION CODE -1  -----
            SqlDataAdapter Adapter = new SqlDataAdapter("insert into GuestReq values('" + songtype.SelectedValue + "','" + songname.Text + "','" + singername.Text + "','" + TextBox1.Text + "')", con);
            DataTable dt = new DataTable();
            Adapter.Fill(dt);
            Label9.Text = "YOUR REQUEST HASBEEN SEND SUCCESSFULLY !";
            songtype.SelectedValue = "";
            songname.Text = "";
            singername.Text = "";
            //DropDownList2.SelectedValue = "";
            TextBox1.Text = "";
            //TextBox2.Focus();
        }
    }
}