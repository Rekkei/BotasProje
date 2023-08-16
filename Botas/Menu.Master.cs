using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Botas
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string kategoriid = "";
        
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlCommand sqlCommand = new SqlCommand("Select * From KategoriTable where menuid=@p1", bgl.baglanti());
            sqlCommand.Parameters.AddWithValue("@p1", 1);
            SqlDataReader reader = sqlCommand.ExecuteReader();

            DataList1.DataSource = reader;
            DataList1.DataBind();

            kategoriid = Request.QueryString["kategoriid"];
            kategoriid = Request.QueryString["kategoriid"] == null ? "1" : Request.QueryString["kategoriid"];
            SqlCommand sqlCommand2 = new SqlCommand("Select * From YemekTable where kategoriid=@p2 and yemekaktif=1", bgl.baglanti());
            sqlCommand2.Parameters.AddWithValue("@p2", kategoriid);
            SqlDataReader reader2 = sqlCommand2.ExecuteReader();

            DataList2.DataSource = reader2;
            DataList2.DataBind();
        }
    }
}