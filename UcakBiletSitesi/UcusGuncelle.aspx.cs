using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UcusGuncelle : System.Web.UI.Page
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
        lblucusNo.Text = Request.QueryString["ucusno"];
        SqlCommand ucusvericek = new SqlCommand("select u.ucusNo,u.ucakNo,s1.sehirAdi as 'nereden',s2.sehirAdi as 'nereye',CAST(CAST(u.KalkisSaat as time) as varchar(5))as 'kalkisSaat',FORMAT(u.kalkisTarih,'dd.MM.yyyy') as 'kalkisTarih',u.tahminiVaris as 'Uçuş süresi',u.fiyati as 'Fiyat (TL)' from UcusListesi u INNER JOIN SehirListesi S1 on S1.sehirNo=u.nereden INNER JOIN SehirListesi S2 on S2.sehirNo=u.nereye where ucusNo=" + lblucusNo.Text, bgl.baglanti());
        SqlDataReader ucusveriyazdir = ucusvericek.ExecuteReader();
        if (ucusveriyazdir.Read())
        {
            lblucakNo.Text = ucusveriyazdir["ucakNo"].ToString();
            lblNereden.Text = ucusveriyazdir["nereden"].ToString();
            lblNereye.Text = ucusveriyazdir["nereye"].ToString();
        }
        bgl.baglanti().Close();

    }


    protected void Guncelle_Click(object sender, EventArgs e)
    {
        if (txtTarih.Text == "" || txtSaat.Text == "" || txtTahminiVaris.Text == "" || txtFiyat.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else
        {
            SqlCommand sorgu = new SqlCommand("SELECT * from UcusListesi where ucusNo=" + lblucusNo.Text, bgl.baglanti());
            SqlDataReader nokontrol = sorgu.ExecuteReader();
            if (nokontrol.Read())
            {
                string tarih = txtTarih.Text;
                string saat = txtSaat.Text;
                string tahminivaris = txtTahminiVaris.Text;
                string Fiyat = txtFiyat.Text;
                string guncellesorgu = "Update UcusListesi set kalkisTarih=@tarih,kalkisSaat=@saat,tahminiVaris=@tahminivaris,fiyati=@Fiyat where ucusNo=" + lblucusNo.Text;
                SqlCommand guncelle = new SqlCommand(guncellesorgu, bgl.baglanti());
                guncelle.Parameters.AddWithValue("@tarih", tarih);
                guncelle.Parameters.AddWithValue("@saat", saat);
                guncelle.Parameters.AddWithValue("@tahminivaris", tahminivaris);
                guncelle.Parameters.AddWithValue("@Fiyat", Fiyat);
                guncelle.ExecuteNonQuery();
                bgl.baglanti().Close();
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