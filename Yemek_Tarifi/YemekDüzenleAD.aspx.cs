using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDüzenleAD : System.Web.UI.Page
{
    SqlConnect bgl = new SqlConnect();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YemekId"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler where YemekId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();
        }

        if (Page.IsPostBack == false)
        {
            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";  //Listin içinde hangi datanın geleceği
            DropDownList1.DataValueField = "KategoriId";  //Listin içindekinlerin ıd leri

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }


    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3,kategoriid=@p4 where YemekId=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

      

    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        //Tüm Yemekleri Durumunu 0 Yaptık
        SqlCommand komut = new SqlCommand("update Tbl_Yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        //Günün Yemeğinin Durumunu 1 Yaptık
        SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=1 where YemekId=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}