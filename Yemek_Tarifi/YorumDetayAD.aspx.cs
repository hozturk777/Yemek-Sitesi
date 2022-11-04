using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetayAD : System.Web.UI.Page
{
    SqlConnect bgl = new SqlConnect();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if(Page.IsPostBack)
        {
            id = Request.QueryString["YorumId"];
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd From Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId = Tbl_Yemekler.YemekId where YorumId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtAdSoyad.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                TxtIcerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();
            }
            //bgl.baglanti().Close();

        }
        bgl.baglanti().Close();

    }

    protected void BtnOnayla_Click(object sender, EventArgs e)
    {
   

            SqlCommand komut = new SqlCommand("Update Tbl_Yorumlar set Yorumİcerik=@p1,YorumOnay=@p2 where YorumId=@p3", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtIcerik.Text);
            komut.Parameters.AddWithValue("@p2", "True");
            komut.Parameters.AddWithValue("@p3", id);
            komut.ExecuteNonQuery();
            bgl.baglanti().Close();
        

    }
}