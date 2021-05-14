using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Ucuslar : System.Web.UI.Page
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

        dataGetir();
    }

    protected void Uye_Click(object sender, EventArgs e)
    {
        Response.Redirect("Uye.aspx");
    }

    protected void Ucuslar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ucuslar.aspx");
    }

    protected void Ucaklar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Ucaklar.aspx");
    }

    protected void Cikisyap_Click(object sender, EventArgs e)
    {
        Response.Redirect("BiletAl.aspx");
    }


    public void dataGetir()
    {
        SqlCommand ucuslistele = new SqlCommand("select u.ucusNo as 'Uçuş Numarası',u.ucakNo as 'Uçak numarası',s1.sehirAdi as 'Nereden',s2.sehirAdi as 'Nereye',CAST(CAST(u.KalkisSaat as time) as varchar(5))as 'Kalkış Saati',FORMAT(u.kalkisTarih,'dd.MM.yyyy') as 'Kalkış Tarihi',u.tahminiVaris as 'Uçuş süresi',u.fiyati as 'Fiyat (TL)' from UcusListesi u INNER JOIN SehirListesi S1 on S1.sehirNo=u.nereden INNER JOIN SehirListesi S2 on S2.sehirNo=u.nereye", bgl.baglanti());
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

    protected void ucussil_Click(object sender, EventArgs e)
    {
        if (txtUcusNo.Text == "")
        {
            lblmesaj.Text = "Uçuş numarası giriniz";
        }
        else
        {
            SqlCommand ucusnokontrol = new SqlCommand("SELECT * from UcusListesi where ucusNo=" + txtUcusNo.Text, bgl.baglanti());
            SqlDataReader ucusvarmi = ucusnokontrol.ExecuteReader();
            if (ucusvarmi.Read())
            {
                SqlCommand ucusdetaykontrol = new SqlCommand("SELECT * from UcusDetay where ucusNo=" + txtUcusNo.Text, bgl.baglanti());
                SqlDataReader ucusvarmi2 = ucusdetaykontrol.ExecuteReader();
                bgl.baglanti().Close();
                if (ucusvarmi2.Read())
                {
                    lblmesaj.Text = "Uçuştan bilet satın alındığı için uçuşu silemezsiniz.";
                    txtUcusNo.Text = "";
                    bgl.baglanti().Close();
                }
                else
                {
                    string sorgu = "Delete From UcusListesi where ucusNo=" + txtUcusNo.Text;
                    SqlCommand ucussil = new SqlCommand(sorgu, bgl.baglanti());
                    ucussil.ExecuteNonQuery();
                    bgl.baglanti().Close();
                    txtUcusNo.Text = "";
                }
            }
            else
            {

                lblmesaj.Text = "Uçuş numarasını doğru giriniz.";
                txtUcusNo.Text = "";
                bgl.baglanti().Close();
            }
            bgl.baglanti().Close();
        } 

    }

    protected void ucusguncelle_Click(object sender, EventArgs e)
    {
        if (txtUcusNo.Text == "")
        {
            lblmesaj.Text = "Uçuş numarası giriniz";
        }
        else
        {
            SqlCommand ucusnokontrol = new SqlCommand("SELECT * from UcusListesi where ucusNo=" + txtUcusNo.Text, bgl.baglanti());
            SqlDataReader ucusvarmi = ucusnokontrol.ExecuteReader();
            if (ucusvarmi.Read())
            {
                Response.Redirect("UcusGuncelle.aspx?ucusno=" + txtUcusNo.Text);
                bgl.baglanti().Close();
            }
            else
            {

                lblmesaj.Text = "Uçuş numarasını doğru giriniz.";
                txtUcusNo.Text = "";
                bgl.baglanti().Close();
            }
            bgl.baglanti().Close();
        }
    }

    protected void ucusekle_Click(object sender, EventArgs e)
    {
        Response.Redirect("UcusEkle.aspx");
    }

    protected void ucusdetay_Click(object sender, EventArgs e)
    {
        if (txtUcusNo.Text == "")
        {
            lblmesaj.Text = "Uçuş numarası giriniz";
        }
        else
        {
            SqlCommand ucusnokontrol = new SqlCommand("SELECT * from UcusListesi where ucusNo=" + txtUcusNo.Text, bgl.baglanti());
            SqlDataReader ucusvarmi = ucusnokontrol.ExecuteReader();
            if (ucusvarmi.Read())
            {
                Response.Redirect("UcusDetay.aspx?ucusno=" + txtUcusNo.Text);
                bgl.baglanti().Close();
            }
            else
            {

                lblmesaj.Text = "Uçuş numarasını doğru giriniz.";
                txtUcusNo.Text = "";
                bgl.baglanti().Close();
            }
            bgl.baglanti().Close();
        }
    }
}