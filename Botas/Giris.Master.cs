using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Botas
{
   
    public partial class Giris : System.Web.UI.MasterPage
    {
        SQLBaglanti bgl = new SQLBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand login = new SqlCommand("Select * from TableKullaniciYonetici where kullanicimail=@pmail and kullanicisifre=@psifre", bgl.baglanti());
            bgl.baglanti();
            login.Parameters.AddWithValue("@pmail", TextBox1);
            login.Parameters.AddWithValue("@pmail", TextBox2);

                if (TextBox1.Text == "admin@botas.gov.tr" && TextBox2.Text=="admin")
                {
                    Response.Redirect("MenuDuzenle.aspx");
                }
                else
                {
                    Response.Write("Hatalı Giriş");
                }
           
        }
    }
}