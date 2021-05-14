using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BilgiDuzenle : System.Web.UI.Page
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
        lblmusteriNo.Text = Request.QueryString["musterinumarasi"];
    }

    protected void Bilgilerim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bilgilerim.aspx?musterino=" + lblmusteriNo.Text);
    }

    protected void Biletlerim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Biletlerim.aspx?musterino=" + musterino.Text);
    }

    protected void BiletSatinAl_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletSatinAl.aspx?musterino=" + musterino.Text);
    }

    protected void Cikisyap_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }

    protected void BilgiGuncelle_Click(object sender, EventArgs e)
    {
        SqlCommand nosorgula = new SqlCommand("SELECT * from MusteriListesi where musteriNo=" + lblmusteriNo.Text, bgl.baglanti());
        SqlDataReader islemyap = nosorgula.ExecuteReader();
        if (txtSifre.Text == "" || txtSifreTekrar.Text == "" || txtMail.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else if (txtSifre.Text != txtSifreTekrar.Text)
        {
            lblMesaj.Text = "Girdiğiniz şifreler aynı değil.";
        }
        else
        {
            SqlCommand mailsorgula = new SqlCommand("SELECT * from MusteriListesi where musteriMail='" + txtMail.Text +"'", bgl.baglanti());
            SqlDataReader mailkontrol = mailsorgula.ExecuteReader();
            if (mailkontrol.Read())
            {
                lblMesaj.Text = "Bu mail adresi zaten kullanılıyor.";
                bgl.baglanti().Close();
            }
            else
            {
                string mail = txtMail.Text;
                string sifre = txtSifre.Text;
                string sorgu = "Update musteriListesi set musteriMail=@mail,musteriSifre=@sifre where musteriNo=" + lblmusteriNo.Text;
                SqlCommand guncelle = new SqlCommand(sorgu, bgl.baglanti());
                guncelle.Parameters.AddWithValue("@sifre", sifre);
                guncelle.Parameters.AddWithValue("@mail", mail);
                guncelle.ExecuteNonQuery();
                bgl.baglanti().Close();
                lblMesaj.Text = "Başarıyla bilgilerinizi değiştirdiniz.";
            }
        }
    }
}