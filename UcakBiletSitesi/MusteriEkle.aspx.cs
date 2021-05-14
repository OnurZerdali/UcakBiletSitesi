using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MusteriEkle : System.Web.UI.Page
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
    }


    protected void musteriEkle_Click(object sender, EventArgs e)
    {
        SqlCommand mailadresicek = new SqlCommand("SELECT (musteriMail) from MusteriListesi where musteriMail='" + kayitMail.Text + "'", bgl.baglanti());
        SqlDataReader mailkontrol = mailadresicek.ExecuteReader();
        if (kayitAd.Text == "" || kayitSoyad.Text == "" || kayitMail.Text == "" || kayitSifre.Text == "" || kayitSifreTekrar.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
            bgl.baglanti().Close();
        }
        else if (kayitSifre.Text != kayitSifreTekrar.Text)
        {
            lblMesaj.Text = "Girdiğiniz şifreler aynı değil.";
            bgl.baglanti().Close();
        }
        else if (mailkontrol.Read())
        {
            lblMesaj.Text = "Bu mail adresi ile hesap oluşturulmuş durumda.";
            bgl.baglanti().Close();
        }
        else
        {
            Random rastgele = new Random();
            int sayi = rastgele.Next(1000);
            string ad = kayitAd.Text;
            string soyad = kayitSoyad.Text;
            string mail = kayitMail.Text;
            string sifre = kayitSifre.Text;
            string query = "INSERT INTO MusteriListesi(musteriAdi,musteriSoyadi,musteriMail,musteriSifre,musteriKurtarmaKodu)" +
                "VALUES (@ad,@soyad,@mail,@sifre,@musteriKurtarmaKodu)";
            SqlCommand kayitet = new SqlCommand(query, bgl.baglanti());
            kayitet.Parameters.AddWithValue("@ad", ad);
            kayitet.Parameters.AddWithValue("@soyad", soyad);
            kayitet.Parameters.AddWithValue("@mail", mail);
            kayitet.Parameters.AddWithValue("@sifre", sifre);
            kayitet.Parameters.AddWithValue("@musteriKurtarmaKodu", sayi);
            kayitet.ExecuteNonQuery();
            lblMesaj.Text = "Başarıyla kayıt oldunuz.";
            bgl.baglanti().Close();
            kayitAd.Text = "";
            kayitSoyad.Text = "";
            kayitMail.Text = "";
            kayitSifre.Text = "";
            kayitSifreTekrar.Text = "";
        }
        bgl.baglanti().Close();
    }
}