using GiyimSatışSitesi.classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GiyimSatışSitesi
{
    public partial class KıyafetEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            SqlCommand commandEkle = new SqlCommand("Insert into TableKiyafet  (KiyafetTurID, Cinsiyet, KiyafetAciklama, KiyafetFoto, KiyafetFiyat, KiyafetStok) values (@ptur,@pcins, @paciklama, @pfoto, @pfiyat, @pstok)", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();


            commandEkle.Parameters.AddWithValue("@ptur", tboxTur.Text);
            commandEkle.Parameters.AddWithValue("@pcins", tboxGender.Text);
            commandEkle.Parameters.AddWithValue("@paciklama", tboxAciklama.Text);
            commandEkle.Parameters.AddWithValue("@pfoto", tboxFoto.Text);
            commandEkle.Parameters.AddWithValue("@pfiyat", tboxFiyat.Text);
            commandEkle.Parameters.AddWithValue("@pStok", tboxStok.Text);

            commandEkle.ExecuteNonQuery();

            lblMessage.Visible = true;
        }
    }
}