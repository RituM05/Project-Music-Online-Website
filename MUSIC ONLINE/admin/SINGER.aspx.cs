using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = null;
   // SqlDataReader dr = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
             
        
         if (FileUpload1.HasFile && FileUpload2.HasFile)
        {
            string fimg = FileUpload1.PostedFile.FileName;
            string fsong = FileUpload2.PostedFile.FileName;
            //string ex1 = Path.GetExtension(fimg);
            //string ex2 = Path.GetExtension(fsong);
            int fsize = FileUpload2.PostedFile.ContentLength;
            //int flag = 0;
            //switch (ex1.ToLower())
            //{
            //    case ".jpg":
            //    case ".mp3":
            //        flag = 1;
            //        break;
            //    default:
            //        flag = 0;
            //        break;
            //}
            //      if (flag == 1)
            //       {
                        FileUpload1.SaveAs(Server.MapPath("~/images/" + fimg));
                        FileUpload2.SaveAs(Server.MapPath("~/audio/" + fsong));
                        cmd = new SqlCommand("INSERT INTO Singer(Singer,Song,Size) VALUES('"+fimg+"','"+fsong+"','"+fsize/1024+"')",con);
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
                        Label1.Text = "Select the file.";
            
                   }
        }
       
       
  }