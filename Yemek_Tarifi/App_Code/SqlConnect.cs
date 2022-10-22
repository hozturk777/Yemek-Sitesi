using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class SqlConnect
{
    public SqlConnection baglanti()
    {
        int sayi = 0;
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-AC6LB6R\SQLEXPRESS;Initial Catalog=DB_yemektarifi;Integrated Security=True;Max Pool Size=1000");
        baglan.Open();
        if (sayi == 3)
        {
            SqlConnection.ClearAllPools();
            sayi = 0;
        }
            return baglan;

    }
   
}