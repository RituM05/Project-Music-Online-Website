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
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
        string str, Name, Password;
        SqlCommand com;
        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;
        con.Open();
        str = "Select * from Registration";
        com = new SqlCommand(str);
        sqlda = new SqlDataAdapter(com.CommandText, con);
        dt = new DataTable();
        sqlda.Fill(dt);
        RowCount = dt.Rows.Count;
        for (int i = 0; i < RowCount; i++)
        {
            Name = dt.Rows[i]["NAME"].ToString();
            Password = dt.Rows[i]["PASSWORD"].ToString();
            if (Name == TextBox1.Text && Password == TextBox2.Text)
            {
                Session["NAME"] = Name;
                if (dt.Rows[i]["gender"].ToString() == "Male")
                    Response.Redirect("~/user/Home.aspx");
                else if (dt.Rows[i]["gender"].ToString() == "Female")
                    Response.Redirect("~/user/Home.aspx");

            }
            else
            {

                labelinfo1.Text = "Invalid User Name or Password! Please try again!";
            }
        }
    }
}