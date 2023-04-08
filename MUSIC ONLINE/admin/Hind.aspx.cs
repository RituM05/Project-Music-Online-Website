using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = null;
    SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    GridDisplayFiles();
        //}

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            string fname = FileUpload1.PostedFile.FileName;
            string extension = Path.GetExtension(fname);
            int fsize = FileUpload1.PostedFile.ContentLength;
            int flag = 0;
            switch (extension.ToLower())
            { 
                case ".mp3":
                    flag=1;
                    break;
                default:
                    flag=0;
                    break;
            }
                  if (flag == 1)
                   {
                        FileUpload1.SaveAs(Server.MapPath("~/audio/" + fname));
                        cmd = new SqlCommand("insert into hindiSong(song,size) values('"+fname+"','"+fsize/1024+"')",con);
                        con.Open();
                      if(cmd.ExecuteNonQuery()!=0)
                      {
                        Label1.Text="File Upload Successfully";
                        Label1.ForeColor = System.Drawing.Color.Green;
                        con.Close();
                       //GridDisplayFiles();
                      }
                      else
                      {
                        Label1.Text="File Faield to Upload";
                      }
                   }
                  else
                    {
                        Label1.Text = "Only .mp3 and .mp4 file is Allowed.";
            
                   }
        }
       
        else
        {
            Label1.Text = "Select the File.";
        }
       
    }
            //private void GridDisplayFiles()
            //{
            //    con.Open();
            //    cmd=new SqlCommand("select * from hindiSong",con);
            //    dr = cmd.ExecuteReader();
            //    if (dr.HasRows)
            //    {
            //        GridView1.DataSource = dr;
            //        GridView1.DataBind();
            //        con.Close();
            //    }
            //    else
            //    {
            //        Label1.Text = "Nothing is available";

            //    }

            //}
 }