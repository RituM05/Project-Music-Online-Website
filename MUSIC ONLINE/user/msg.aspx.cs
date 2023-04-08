using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class user_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
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
            SqlDataAdapter Adapter = new SqlDataAdapter("insert into mem_msg values('" + name.Text + "','" + email.Text + "','" + msgbox.Text + "')", con);
            DataTable dt = new DataTable();
            Adapter.Fill(dt);
            Label9.Text = "YOUR MESSAGE HAS BEEN SEND SUCCESFULLY !";
            name.Text = "";
            email.Text = "";
            msgbox.Text="";
            // TextBox2.Focus();
        }
    }
}