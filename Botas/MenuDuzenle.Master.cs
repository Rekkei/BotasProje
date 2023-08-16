using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Botas
{
    public partial class MenuDuzenle : System.Web.UI.MasterPage
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string menuid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMenuList();
            }
        }

        protected void BindMenuList()
        {
            SqlCommand cmd = new SqlCommand("Select * From TableMenu", bgl.baglanti());
            SqlDataReader dr = cmd.ExecuteReader();

            DataList1.DataSource = dr;
            DataList1.DataBind();

            dr.Close();

            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("INSERT INTO TableMenu (menuad) VALUES (@p1)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox1.Text);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();

            Response.Redirect(Request.RawUrl);
        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
       
        protected void Button6_Click(object sender, EventArgs e)
        {
            
            menuid = Request.QueryString["menuid"] == null ? "1" : Request.QueryString["menuid"];
            SqlCommand komut = new SqlCommand("Delete From TableMenu where menuid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", menuid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();


        }

        
    }
}