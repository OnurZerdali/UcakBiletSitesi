using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MusteriPanel : System.Web.UI.Page
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
        musterino.Visible = false;
        lblmail.Visible = false;
        lblmail.Text = Request.QueryString["mail"];
        SqlCommand musterivericek = new SqlCommand("SELECT * from MusteriListesi where musteriMail='" + lblmail.Text + "'", bgl.baglanti());
        SqlDataReader musteribilgi = musterivericek.ExecuteReader();
        if (musteribilgi.Read())
        {
            musterino.Text = musteribilgi["musteriNo"].ToString();
            musteriadsoyad.Text = musteribilgi["musteriAdi"].ToString() +" " + musteribilgi["musteriSoyadi"].ToString();
        }
        bgl.baglanti().Close();
        
    }

    protected void Bilgilerim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Bilgilerim.aspx?musterino=" + musterino.Text + "");
    }

    protected void Biletlerim_Click(object sender, EventArgs e)
    {
        Response.Redirect("Biletlerim.aspx?musterino=" + musterino.Text + "");
    }

    protected void BiletSatinAl_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletSatinAl.aspx?musterino=" + musterino.Text + "");
    }

    protected void Cikisyap_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx?musterino=" + musterino.Text + "");
    }
}