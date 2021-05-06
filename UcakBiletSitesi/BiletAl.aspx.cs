using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BiletAl : System.Web.UI.Page
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
        SqlCommand ucussayisicek = new SqlCommand("SELECT COUNT(ucusNo) AS UcusSayisi FROM UcusListesi", bgl.baglanti());
        SqlDataReader ucussayisi = ucussayisicek.ExecuteReader();
        if (ucussayisi.Read())
        {
            lblucus.Text = ucussayisi["UcusSayisi"].ToString();
        }
        SqlCommand kapasitecek = new SqlCommand("SELECT Sum(kapasite) as Kapasite FROM UcakListesi", bgl.baglanti());
        SqlDataReader kapasiteveri = kapasitecek.ExecuteReader();
        if (kapasiteveri.Read())
        {
            lblkapasite.Text = kapasiteveri["Kapasite"].ToString();
        }
        SqlCommand yolcusayisi = new SqlCommand("SELECT COUNT(musteriNo) AS MusteriSayisi FROM MusteriListesi", bgl.baglanti());
        SqlDataReader yolcu = yolcusayisi.ExecuteReader();
        if (yolcu.Read())
        {
            lblyolcu.Text = yolcu["MusteriSayisi"].ToString();
        }
    }

    protected void KayitOl_Click(object sender, EventArgs e)
    {
        SqlCommand mailadresicek = new SqlCommand("SELECT (musteriMail) from MusteriListesi where musteriMail='"+kayitMail.Text+"'", bgl.baglanti());
        SqlDataReader mailkontrol = mailadresicek.ExecuteReader();
        if (kayitAd.Text == "" || kayitSoyad.Text == "" || kayitMail.Text == "" || kayitSifre.Text == "" || kayitSifreTekrar.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else if(kayitSifre.Text != kayitSifreTekrar.Text)
        {
            lblMesaj.Text = "Girdiğiniz şifreler aynı değil.";
        }
        else if(mailkontrol.Read())
        {
            lblMesaj.Text = "Bu mail adresi ile hesap oluşturulmuş durumda.";
        }
        else
        {
            string ad = kayitAd.Text;
            string soyad = kayitSoyad.Text;
            string mail = kayitMail.Text;
            string sifre = kayitSifre.Text;
            string query = "INSERT INTO MusteriListesi(musteriAdi,musteriSoyadi,musteriMail,musteriSifre)" +
                "VALUES (@ad,@soyad,@mail,@sifre)";
            SqlCommand kayitet = new SqlCommand(query, bgl.baglanti());
            kayitet.Parameters.AddWithValue("@ad", ad);
            kayitet.Parameters.AddWithValue("@soyad", soyad);
            kayitet.Parameters.AddWithValue("@mail", mail);
            kayitet.Parameters.AddWithValue("@sifre", sifre);
            kayitet.ExecuteNonQuery();
            lblMesaj.Text = "Başarıyla kayıt oldunuz.";
            bgl.baglanti().Close();
            kayitAd.Text = "";
            kayitSoyad.Text = "";
            kayitMail.Text = "";
            kayitSifre.Text = "";
            kayitSifreTekrar.Text = "";
        }

    }

    protected void btnGirisYap_Click(object sender, EventArgs e)
    {
        string denenenmail = DenenenMail.Text;
        string denenensifre = DenenenSifre.Text;
        SqlCommand verilericek = new SqlCommand("SELECT musteriMail,musteriSifre from MusteriListesi where musteriMail='" + DenenenMail.Text + "'", bgl.baglanti());
        SqlDataReader kontrolet = verilericek.ExecuteReader();
        if (kontrolet.Read())
        {
            if (denenenmail == kontrolet["musteriMail"].ToString() && denenensifre == kontrolet["musteriSifre"].ToString())
            {
                lblMesaj2.Text = "Başarıyla giriş yaptınız.";
            }
            else
            {
                lblMesaj2.Text = "Mail adresiniz veya şifreniz yanlış.";
            }
        }
        else
        {
            lblMesaj2.Text = "Mail adresiniz veya şifreniz yanlış.";
        }
        DenenenMail.Text = "";
        DenenenSifre.Text = "";
        bgl.baglanti().Close();
    }
}