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
    protected void Button1_Click(object sender, EventArgs e)
    {
         Label1.Text = "";
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        {
            //---  SQL INSERT DATA CONNECTION CODE -1  -----
            SqlDataAdapter Adapter = new SqlDataAdapter("insert into Registration values('" + txtname.Text + "','" + txtpassword.Text + "','" + RadioButtonList1.SelectedValue + "','" + age.Text + "','" + phno.Text + "','" + DropDownList1.SelectedValue + "','" + txtemail.Text + "')", con);
            DataTable dt = new DataTable();
            Adapter.Fill(dt);
             Label1.Text = "NOW, You are a Member of 'MUSIC SOUND'";
            txtname.Text = "";
            txtpassword.Text = "";
           
            RadioButtonList1.SelectedValue = "";
            age.Text = "";
            phno.Text = "";
            DropDownList1.SelectedValue = "";
            txtemail.Text = "";
            txtname.Focus();
        }

    
    }
    protected void txtcpass_TextChanged(object sender, EventArgs e)
    {
        

    }
}