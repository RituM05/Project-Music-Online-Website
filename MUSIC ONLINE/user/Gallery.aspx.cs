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

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}