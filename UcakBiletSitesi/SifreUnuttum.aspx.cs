using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class SifreUnuttum : System.Web.UI.Page
{
    BaglantiSinifi bgl = new BaglantiSinifi();
    protected void Page_Load(object sender, EventArgs e)
    {
        SiteyeGit.Visible = false;
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


    protected void SifreSifirla_Click(object sender, EventArgs e)
    {
        string denenenmail = DenenenMail.Text;
        string kodkontrol = Kurtarmakod.Text;
        SqlCommand verilericek = new SqlCommand("SELECT musteriMail,musteriKurtarmaKodu from MusteriListesi where musteriMail='" + DenenenMail.Text + "'", bgl.baglanti());
        SqlDataReader kontrolet = verilericek.ExecuteReader();
        if (DenenenMail.Text == "" || YeniSifre.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
            bgl.baglanti().Close();
        }
        else if (kontrolet.Read())
        {
            if (denenenmail == kontrolet["musteriMail"].ToString() && kodkontrol == kontrolet["musteriKurtarmaKodu"].ToString())
            {
                if (YeniSifre.Text != YeniSifreTekrar.Text)
                {
                    lblMesaj.Text = "Girdiğiniz şifreler aynı değil.";
                }
                else
                {
                    string yenisifre = YeniSifre.Text;
                    string sorgu = "Update musteriListesi set musteriSifre=@sifre where musteriMail='" + DenenenMail.Text + "'";
                    SqlCommand sifresifirla = new SqlCommand(sorgu, bgl.baglanti());
                    sifresifirla.Parameters.AddWithValue("@sifre", yenisifre);
                    sifresifirla.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    lblMesaj.Text = "Başarıyla şifrenizi sıfırladınız.";
                    SifreSifirla.Visible = false;
                    SiteyeGeriDon.Visible = false;
                    SiteyeGit.Visible = true;
                    DenenenMail.Text = "";
                    Kurtarmakod.Text = "";
                    YeniSifre.Text = "";
                    YeniSifreTekrar.Text = "";
                }
            }
            else
            {
                lblMesaj.Text = "Mail adresiniz veya kurtarma kodunuz yanlış.";
            }
        }
        else
        {
            lblMesaj.Text = "Böyle bir mail adresi bulunamadı";
        }

        YeniSifre.Text = "";
        YeniSifreTekrar.Text = "";
        bgl.baglanti().Close();
    }
    protected void SiteyeGit_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }

}