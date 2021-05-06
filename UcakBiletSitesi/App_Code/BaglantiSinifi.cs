using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


public class BaglantiSinifi
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-N8D3198;Initial Catalog=UcakBileti;Integrated Security=True");
        baglan.Open();
        return baglan;
        baglan.Close();
    }
}