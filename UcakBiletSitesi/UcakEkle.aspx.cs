using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class UcakEkle : System.Web.UI.Page
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


    protected void ucakEkle_Click(object sender, EventArgs e)
    {
        if (txtucakNo.Text == "" || txtKapasite.Text == "" || txtHakkinda.Text == "")
        {
            lblMesaj.Text = "Tüm alanları doldurunuz.";
        }
        else
        {
            SqlCommand sorgu = new SqlCommand("SELECT * FROM UcakListesi where ucakNo=" + txtucakNo.Text, bgl.baglanti());
            SqlDataReader ucakvarmi = sorgu.ExecuteReader();
            if (ucakvarmi.Read())
            {
                lblMesaj.Text = "Uçak numaranız uçak listesinde zaten ekli.";
                bgl.baglanti().Close();
            }
            else
            {
                string ucakNo = txtucakNo.Text;
                string kapasite = txtKapasite.Text;
                string hakkinda = txtHakkinda.Text;
                string query = "INSERT INTO UcakListesi(ucakNo,kapasite,ucakHakkinda)" +
                    "VALUES (@ucakNo,@kapasite,@hakkinda)";
                SqlCommand kayitet = new SqlCommand(query, bgl.baglanti());
                kayitet.Parameters.AddWithValue("@ucakNo", ucakNo);
                kayitet.Parameters.AddWithValue("@kapasite", kapasite);
                kayitet.Parameters.AddWithValue("@hakkinda", hakkinda);
                kayitet.ExecuteNonQuery();
                lblMesaj.Text = "Bilgilerini girdiğiniz uçak eklendi.";
                txtucakNo.Text = "";
                txtKapasite.Text = "";
                txtHakkinda.Text = "";
                bgl.baglanti().Close();
            }
            bgl.baglanti().Close();
        }

        bgl.baglanti().Close();
    }

    public void dataGetir()
    {
        SqlCommand ucuslistele = new SqlCommand("select ucakNo as 'Uçak Numarası',kapasite as 'Kapasite',ucakHakkinda as 'Hakkında' from UcakListesi", bgl.baglanti());
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
}