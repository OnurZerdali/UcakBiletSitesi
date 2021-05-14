using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Bilgilerim : System.Web.UI.Page
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
        lblnotut.Visible = false;
        lblnotut.Text = Request.QueryString["musterino"];
        SqlCommand musterivericek = new SqlCommand("SELECT * from MusteriListesi where musteriNo=" + lblnotut.Text, bgl.baglanti());
        SqlDataReader musteribilgi = musterivericek.ExecuteReader();
        if (musteribilgi.Read())
        {
            lblmusteriNo.Text = musteribilgi["musteriNo"].ToString();
            lblmusteriAd.Text = musteribilgi["musteriAdi"].ToString();
            lblmusteriSoyad.Text = musteribilgi["musteriSoyadi"].ToString();
            lblmusteriMail.Text = musteribilgi["musteriMail"].ToString();
            lblkurtarmaKodu.Text = musteribilgi["musteriKurtarmaKodu"].ToString();
        }
        bgl.baglanti().Close();
        Hayir.Visible = false;
        Evet.Visible = false;
        lblMesaj2.Visible = false;
        Anasayfa.Visible = false;
        GiriseDon.Visible = false;
    }

    protected void Bilgilerim_Click(object sender, EventArgs e)
    {

    }

    protected void Biletlerim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Biletlerim.aspx");
    }

    protected void BiletSatinAl_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletSatinAl.aspx");
    }

    protected void Cikisyap_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }


    protected void UyelikSil_Click(object sender, EventArgs e)
    {
        Hayir.Visible = true;
        Evet.Visible = true;
        BilgiDegistir.Visible = false;
        UyelikSil.Visible = false;
        lblMesaj.Text = "Üyeliğinizi silmek istediğinize emin misiniz ? ";
        lblMesaj.Visible = true;
    }

    protected void Hayir_Click(object sender, EventArgs e)
    {
        Hayir.Visible = false;
        Evet.Visible = false;
        BilgiDegistir.Visible = true;
        UyelikSil.Visible = true;
        lblMesaj.Text = "";
        lblMesaj.Visible = false;
    }

    protected void Evet_Click(object sender, EventArgs e)
    {
        string sorgu = "Delete From MusteriListesi where musteriNo=" + lblnotut.Text;
        SqlCommand musterisil = new SqlCommand(sorgu, bgl.baglanti());
        musterisil.ExecuteNonQuery();
        bgl.baglanti().Close();
        Bilgilerim1.Visible = false;
        Biletler.Visible = false;
        Biletal.Visible = false;
        Cikisyap.Visible = false;
        lblmusteriNo.Text = "";
        lblmusteriAd.Text = "";
        lblmusteriMail.Text = "";
        lblmusteriSoyad.Text = "";
        lblkurtarmaKodu.Text = "";
        lblMesaj2.Text = "Üyeliğiniz başarıyla silindi.";
        lblMesaj2.Visible = true;
        Anasayfa.Visible = true;
        GiriseDon.Visible = true;
    }

    protected void BilgiDegistir_Click(object sender, EventArgs e)
    {
        Response.Redirect("BilgiDuzenle.aspx?musterinumarasi=" + lblnotut.Text);
    }

    protected void Anasayfa_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void GiriseDon_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }
}