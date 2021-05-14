using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class UcakGuncelle : System.Web.UI.Page
{
    BaglantiSinifi bgl = new BaglantiSinifi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand ucaksayisicek = new SqlCommand("SELECT COUNT(ucakNo) AS UcakSayisi FROM UcakListesi", bgl.baglanti());
        SqlDataReader ucaksayisi = ucaksayisicek.ExecuteReader();
        if (ucaksayisi.Read())
        {
            lblucak.Text = ucaksayisi["UcakSayisi"].ToString();
        }
        bgl.baglanti().Close();
        SqlCommand ucussayisicek = new SqlCommand("SELECT COUNT(ucusNo) AS UcusSayisi FROM UcusListesi", bgl.baglanti());
        SqlDataReader ucussayisi = ucussayisicek.ExecuteReader();
        if (ucussayisi.Read())
        {
            lblucus.Text = ucussayisi["UcusSayisi"].ToString();
        }
        bgl.baglanti().Close();
        SqlCommand kapasitecek = new SqlCommand("SELECT Sum(kapasite) as Kapasite FROM UcakListesi", bgl.baglanti());
        SqlDataReader kapasiteveri = kapasitecek.ExecuteReader();
        if (kapasiteveri.Read())
        {
            lblkapasite.Text = kapasiteveri["Kapasite"].ToString();
        }
        bgl.baglanti().Close();
        SqlCommand yolcusayisi = new SqlCommand("SELECT COUNT(musteriNo) AS MusteriSayisi FROM MusteriListesi", bgl.baglanti());
        SqlDataReader yolcu = yolcusayisi.ExecuteReader();
        if (yolcu.Read())
        {
            lblyolcu.Text = yolcu["MusteriSayisi"].ToString();
        }
        bgl.baglanti().Close();
        lblucakNo.Text = Request.QueryString["ucakno"];
        SqlCommand ucusvericek = new SqlCommand("select * from UcakListesi where ucakNo="+ lblucakNo.Text, bgl.baglanti());
        SqlDataReader ucusveriyazdir = ucusvericek.ExecuteReader();
        if (ucusveriyazdir.Read())
        {
            lblucakkapasite.Text = ucusveriyazdir["kapasite"].ToString();
        }
        bgl.baglanti().Close();

    }


    protected void Guncelle_Click(object sender, EventArgs e)
    {
        if (txtHakkinda.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else
        {
            SqlCommand sorgu = new SqlCommand("SELECT * from UcakListesi where ucakNo=" + lblucakNo.Text, bgl.baglanti());
            SqlDataReader nokontrol = sorgu.ExecuteReader();
            if (nokontrol.Read())
            {
                string hakkinda = txtHakkinda.Text;
                string guncellesorgu = "Update UcakListesi set ucakHakkinda=@hakkinda where ucakNo=" + lblucakNo.Text;
                SqlCommand guncelle = new SqlCommand(guncellesorgu, bgl.baglanti());
                guncelle.Parameters.AddWithValue("@hakkinda", hakkinda);
                guncelle.ExecuteNonQuery();
                bgl.baglanti().Close();
                txtHakkinda.Text = "";
                lblMesaj.Text = "Başarıyla uçuş bilgilerini değiştirdiniz.";
            }
            else
            {
                lblMesaj.Text = "Bir hata oluştu";
                bgl.baglanti().Close();
            }
            bgl.baglanti().Close();
        }
    }
}