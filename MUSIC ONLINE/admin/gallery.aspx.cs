﻿using System;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        show_data();

    }
    private void show_data()
    {
        DirectoryInfo d = new DirectoryInfo(MapPath("~/imgUp/"));
        FileInfo[] r = d.GetFiles();
        DataTable dt = new DataTable();
        dt.Columns.Add("path");

        for (int i = 0; i < r.Length; i++)
        {
            DataRow row = dt.NewRow();
            row["path"] = "~/imgUp/" + r[i].Name;
            dt.Rows.Add(row);

        }
        DataList1.DataSource = dt;
        DataList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string path = "~/imgUp/" + Guid.NewGuid().ToString() + "" + Path.GetExtension(FileUpload1.FileName);
            FileUpload1.SaveAs(MapPath(path));
            Response.Write("Save Successfully");
            show_data();
        }
    }

    protected void LinkButton1_Command(object sender, CommandEventArgs e)
    {
        File.Delete(MapPath(e.CommandArgument.ToString()));
        Response.Write("File delete successfully");
        show_data();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}