using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Galeri : System.Web.UI.Page
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
        SqlCommand sehiradoku1 = new SqlCommand("SELECT (sehirAdi) from SehirListesi where sehirNo=1", bgl.baglanti());
        SqlDataReader birinciad = sehiradoku1.ExecuteReader();
        if (birinciad.Read())
        {
            lblsehir1.Text = birinciad["sehirAdi"].ToString();
        }
        SqlCommand sehiradoku2 = new SqlCommand("SELECT (sehirAdi) from SehirListesi where sehirNo=2", bgl.baglanti());
        SqlDataReader ikinciad = sehiradoku2.ExecuteReader();
        if (ikinciad.Read())
        {
            lblsehir2.Text = ikinciad["sehirAdi"].ToString();
        }
        SqlCommand sehiradoku3 = new SqlCommand("SELECT (sehirAdi) from SehirListesi where sehirNo=3", bgl.baglanti());
        SqlDataReader ucuncuad = sehiradoku3.ExecuteReader();
        if (ucuncuad.Read())
        {
            lblsehir3.Text = ucuncuad["sehirAdi"].ToString();
        }
        SqlCommand sehiradoku4 = new SqlCommand("SELECT (sehirAdi) from SehirListesi where sehirNo=4", bgl.baglanti());
        SqlDataReader dorduncuad = sehiradoku4.ExecuteReader();
        if (dorduncuad.Read())
        {
            lblsehir4.Text = dorduncuad["sehirAdi"].ToString();
        }

        SqlCommand sehirhakkindaoku1 = new SqlCommand("SELECT (sehirHakkinda) from SehirListesi where sehirNo=1", bgl.baglanti());
        SqlDataReader birincihk = sehirhakkindaoku1.ExecuteReader();
        if (birincihk.Read())
        {
            lblhakkinda1.Text = birincihk["sehirHakkinda"].ToString();
        }
        SqlCommand sehirhakkindaoku2 = new SqlCommand("SELECT (sehirHakkinda) from SehirListesi where sehirNo=2", bgl.baglanti());
        SqlDataReader ikincihk = sehirhakkindaoku2.ExecuteReader();
        if (ikincihk.Read())
        {
            lblhakkinda2.Text = ikincihk["sehirHakkinda"].ToString();
        }
        SqlCommand sehirhakkindaoku3 = new SqlCommand("SELECT (sehirHakkinda) from SehirListesi where sehirNo=3", bgl.baglanti());
        SqlDataReader ucuncuhk = sehirhakkindaoku3.ExecuteReader();
        if (ucuncuhk.Read())
        {
            lblhakkinda3.Text = ucuncuhk["sehirHakkinda"].ToString();
        }
        SqlCommand sehirhakkindaoku4 = new SqlCommand("SELECT (sehirHakkinda) from SehirListesi where sehirNo=4", bgl.baglanti());
        SqlDataReader dorduncuhk = sehirhakkindaoku4.ExecuteReader();
        if (dorduncuhk.Read())
        {
            lblhakkinda4.Text = dorduncuhk["sehirHakkinda"].ToString();
        }
    }

    protected void altbtnBiletAl_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }

    protected void altiletisimegec_Click(object sender, EventArgs e)
    {
        Response.Redirect("iletisim.aspx");
    }
}