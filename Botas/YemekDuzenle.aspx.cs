using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Botas
{
    public partial class YemekDuzenle : System.Web.UI.Page
    {
        SQLBaglanti bgl = new SQLBaglanti();
        string islem = "";
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    if (islem == "sil")
            //    {
            //        id = Request.QueryString["yemekid"] == null ? "1" : Request.QueryString["yemekid"];
            //        SqlCommand sqlCommand4 = new SqlCommand("Delete From YemekTable where yemekid=@p1", bgl.baglanti());
            //        sqlCommand4.Parameters.AddWithValue("@p1", id);
            //        sqlCommand4.ExecuteNonQuery();
            //        bgl.baglanti().Close();
                   
            //    }

            //    if (islem == "ksil")
            //    {
            //        id = Request.QueryString["kategoriid"] == null ? "1" : Request.QueryString["kategoriid"];
            //        SqlCommand sqlCommand4 = new SqlCommand("Delete From KategoriTable where kategoriid=@p1", bgl.baglanti());
            //        sqlCommand4.Parameters.AddWithValue("@p1", id);
            //        sqlCommand4.ExecuteNonQuery();
            //        bgl.baglanti().Close();
            //    }
            //}
            string menuid = Request.QueryString["menuid"];
            //CheckBox1_CheckedChanged(sender, e);
            
                menuid = Request.QueryString["menuid"] == null ? "1" : Request.QueryString["menuid"];
                id = Request.QueryString["yemekid"];
                islem = Request.QueryString["islem"];
                //Yemek Ekelemek için Kategori Listesi
                SqlCommand cmd = new SqlCommand("Select * From KategoriTable where menuid=@pmenuid", bgl.baglanti());
                cmd.Parameters.AddWithValue("@pmenuid", menuid);
                SqlDataReader dr = cmd.ExecuteReader();

                DropDownList1.DataTextField = "kategoriad";
                DropDownList1.DataValueField = "kategoriid";
                DropDownList1.DataSource = dr;
                DropDownList1.DataBind();


            Panel1.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel6.Visible = false;

            menuid = Request.QueryString["menuid"] == null ? "1" : Request.QueryString["menuid"];
           


            //Yemek Listesi

            //SqlCommand sqlCommand = new SqlCommand("Select * From YemekTable",bgl.baglanti());
            //SqlDataReader reader = sqlCommand.ExecuteReader();


            SqlCommand sqlCommand3 = new SqlCommand("select * from KategoriTable,YemekTable where KategoriTable.menuid=@p1 and KategoriTable.kategoriid =YemekTable.kategoriid", bgl.baglanti());  //Select * From YemekTable where menuid=@p1
            sqlCommand3.Parameters.AddWithValue("@p1", menuid);
            SqlDataReader reader3 = sqlCommand3.ExecuteReader();


            DataList2.DataSource = reader3;
            DataList2.DataBind();

            //Kategori Listesi
            SqlCommand sqlCommand2 = new SqlCommand("Select * From KategoriTable where menuid=@p2", bgl.baglanti());
            sqlCommand2.Parameters.AddWithValue("@p2", menuid);
            SqlDataReader reader2 = sqlCommand2.ExecuteReader();
            DataList1.DataSource = reader2;
            DataList1.DataBind();
            if (islem == "sil")
            {
                id = Request.QueryString["yemekid"] == null ? "1" : Request.QueryString["yemekid"];
                SqlCommand sqlCommand4 = new SqlCommand("Delete From YemekTable where yemekid=@p1", bgl.baglanti());
                sqlCommand4.Parameters.AddWithValue("@p1", id);
                sqlCommand4.ExecuteNonQuery();
                bgl.baglanti().Close();
                
            }

            if (islem == "ksil")
            {
                id = Request.QueryString["kategoriid"] == null ? "1" : Request.QueryString["kategoriid"];
                SqlCommand sqlCommand4 = new SqlCommand("Delete From KategoriTable where kategoriid=@p1", bgl.baglanti());
                sqlCommand4.Parameters.AddWithValue("@p1", id);
                sqlCommand4.ExecuteNonQuery();
                bgl.baglanti().Close();
            }
            SqlCommand sqlCommand5 = new SqlCommand("Select  * From TableMenu where menuid=@p4",bgl.baglanti());
            sqlCommand5.Parameters.AddWithValue("@p4",menuid);
            SqlDataReader reader4 = sqlCommand5.ExecuteReader();
            DataList3.DataSource = reader4;
            DataList3.DataBind();
            bgl.baglanti() .Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
        }
        protected void Button4_Click(object sender, EventArgs e)
        {

            Panel3.Visible = false;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel6.Visible = true;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Panel6.Visible = false;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string menuid = Request.QueryString["menuid"];
            menuid = Request.QueryString["menuid"] == null ? "1" : Request.QueryString["menuid"];
            SqlCommand komut = new SqlCommand("insert into KategoriTable (kategoriad,menuid) values (@p1,@p2)", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TextBox3.Text);
            komut.Parameters.AddWithValue("@p2", menuid);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(TextBox1.Text) && string.IsNullOrEmpty(TextBox2.Text))
            {
                WarningLabel.Text = "Lütfen bütün bilgileri giriniz";
                
            }
            else
            {

                if (FileUpload1 == null)
                {
                    FileUpload1.SaveAs(Server.MapPath("/Photos/" + FileUpload1.FileName));
                }
                string menuid = Request.QueryString["menuid"];
                SqlCommand komut = new SqlCommand("insert into YemekTable (yemekad,yemekfiyat,kategoriid,menuid,yemekresim) values (@p1,@p2,@p3,@p4,@p5)", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", TextBox1.Text);
                komut.Parameters.AddWithValue("@p2", TextBox2.Text);
                komut.Parameters.AddWithValue("@p3", DropDownList1.SelectedValue);
                komut.Parameters.AddWithValue("@p4", menuid);
                komut.Parameters.AddWithValue("@p5", "~/Photos/" + FileUpload1.FileName);
                komut.ExecuteNonQuery();
                bgl.baglanti().Close();
            }



        }

        protected void Button11_Click(object sender, EventArgs e)
        {
           Response.Redirect("MenuDuzenle.aspx");
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            SqlCommand komut= new SqlCommand("UPDATE YemekTableSET SET yemekaktif = CASE WHEN yemekaktif = 1 THEN 0 ELSE 1 END WHERE yemekid=@p2", bgl.baglanti());
            
        }
    }
}