using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class MusteriDuzenle : System.Web.UI.Page
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
        lblmusteriNo.Text = Request.QueryString["musterino"];
        dataGetir();
    }

    public void dataGetir()
    {
        SqlCommand ucuslistele = new SqlCommand("select musteriNo as 'Müşteri Numarası',musteriAdi as 'Adı',musteriSoyadi as 'Soyadı',musteriMail as 'Mail adresi',musteriKurtarmaKodu as 'Kurtarma kodu' from MusteriListesi where musteriNo=" + lblmusteriNo.Text, bgl.baglanti());
        SqlDataAdapter da = new SqlDataAdapter(ucuslistele);
        DataTable dt = new DataTable();
        da.Fill(dt);
        StringBuilder sb = new StringBuilder();
        sb.Append("<table class='table table-hover'>");
        sb.Append("<tr>");
        foreach (DataColumn column in dt.Columns)
        {
            sb.Append("<th>" + column.ColumnName + "</th>");
        }
        sb.Append("</tr>");
        foreach (DataRow row in dt.Rows)
        {
            sb.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                string test = "onMove1=" + "alert(" + "'test metni" + "')";
                sb.Append("<td " + test + ">");
                sb.Append(row[column.ColumnName].ToString());
                sb.Append("</td>");
            }
            sb.Append("</tr>");
        }
        sb.Append("</table>");
        Panel1.Controls.Add(new Label { Text = sb.ToString() });
        bgl.baglanti().Close();
    }

    protected void Guncelle_Click(object sender, EventArgs e)
    {
        if (txtMail.Text == "" || txtkurtarmaKodu.Text == "" || txtmusteriAd.Text == "" || txtmusteriSoyad.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else
        {
            SqlCommand sorgu = new SqlCommand("SELECT * from MusteriListesi where musteriNo=" + lblmusteriNo.Text, bgl.baglanti());
            SqlDataReader nokontrol = sorgu.ExecuteReader();
            if (nokontrol.Read())
            {
                string ad = txtmusteriAd.Text;
                string soyad = txtmusteriSoyad.Text;
                string mail = txtMail.Text;
                string kurtarmakod = txtkurtarmaKodu.Text;
                string guncellesorgu = "Update MusteriListesi set musteriAdi=@ad,musteriSoyadi=@soyad,musteriMail=@mail,musteriKurtarmaKodu=@kurtarmakod where musteriNo=" + lblmusteriNo.Text;
                SqlCommand guncelle = new SqlCommand(guncellesorgu, bgl.baglanti());
                guncelle.Parameters.AddWithValue("@ad", ad);
                guncelle.Parameters.AddWithValue("@soyad", soyad);
                guncelle.Parameters.AddWithValue("@mail", mail);
                guncelle.Parameters.AddWithValue("@kurtarmakod", kurtarmakod);
                guncelle.ExecuteNonQuery();
                bgl.baglanti().Close();
                lblMesaj.Text = "Başarıyla müşteri bilgilerini değiştirdiniz.";
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