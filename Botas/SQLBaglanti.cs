using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Botas
{
    public class SQLBaglanti
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = TUNAPC\SQLEXPRESS; Initial Catalog = Dbo_yemekler; Integrated Security = True");
            baglan.Open();
            return baglan;
        }
    }
}
