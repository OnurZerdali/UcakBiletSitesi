using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class UcusDetay : System.Web.UI.Page
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
        SqlCommand ucuslistele = new SqlCommand("SELECT ucusNo as 'Uçuş numarası',ucakNo as 'Uçak numarası',musteriNo 'Müşteri numarası',koltukNo as 'Koltuk numarası',fiyati as 'Fiyatı' FROM UcusDetay where ucusNo=" + Request.QueryString["ucusno"] + "ORDER BY ucusNo,koltukNo", bgl.baglanti());
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

    protected void koltuksil_Click(object sender, EventArgs e)
    {
        if (txtkoltukNo.Text == "")
        {
            lblmesaj.Text = "Koltuk numarası giriniz";
        }
        else
        {
            SqlCommand ucusnokontrol = new SqlCommand("SELECT * from UcusDetay where ucusNo =" + Request.QueryString["ucusno"] + "and koltukNo =" + txtkoltukNo.Text, bgl.baglanti());
            SqlDataReader ucusvarmi = ucusnokontrol.ExecuteReader();
            if (ucusvarmi.Read())
            {
                string sorgu = "Delete From UcusDetay where ucusNo =" + Request.QueryString["ucusno"] + "and koltukNo =" + txtkoltukNo.Text;
                SqlCommand ucussil = new SqlCommand(sorgu, bgl.baglanti());
                ucussil.ExecuteNonQuery();
                bgl.baglanti().Close();
                lblmesaj.Text = "Seçtiğiniz bilet başarıyla silindi.";
                txtkoltukNo.Text = "";
            }
            else
            {
                txtkoltukNo.Text = "";
                lblmesaj.Text = "Koltuk numarasını doğru giriniz.";
            }
            bgl.baglanti().Close();
        }

    }
}