using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

public class SqlConnect
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-AC6LB6R\SQLEXPRESS;Initial Catalog=DB_yemektarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}