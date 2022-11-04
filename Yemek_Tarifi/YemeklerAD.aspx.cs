using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemeklerAD : System.Web.UI.Page
{
    SqlConnect bgl = new SqlConnect();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        Panel2.Visible = false;
        Panel4.Visible = false;

        if (Page.IsPostBack == false)
        {
            id = Request.QueryString["YemekId"];
            islem = Request.QueryString["islem"];

            //Kategori Listesi
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";  //Listin içinde hangi datanın geleceği
            DropDownList1.DataValueField = "KategoriId";  //Listin içindekinlerin ıd leri

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }

        if (islem == "sil")
        {
            SqlCommand komut3 = new SqlCommand("delete From Tbl_Yemekler where YemekId=@p1", bgl.baglanti());
            komut3.Parameters.AddWithValue("@p1", id);
            komut3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

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
        Panel4.Visible = true;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {

        //Yemek Ekleme
        SqlCommand komut3 = new SqlCommand("insert into Tbl_Yemekler(yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)", bgl.baglanti());
        komut3.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut3.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut3.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komut3.ExecuteNonQuery();
        bgl.baglanti().Close();


        //Kategori Sayısı Arttırma
        SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet + 1 where KategoriId=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}