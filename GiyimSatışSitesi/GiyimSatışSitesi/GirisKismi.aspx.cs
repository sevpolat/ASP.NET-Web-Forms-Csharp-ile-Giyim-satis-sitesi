using GiyimSatışSitesi.classes;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GiyimSatışSitesi
{
    public partial class GirisKismi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select * from TableKullanici where KullaniciMail = @pmail and KullaniciSifre=@ppass", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tboxMail.Text == "adminpage@gmail.com")
                {
                    Response.Redirect("KıyafetEkle.aspx");
                }
                else
                {
                    Response.Write("Giriş yapıldı");
                    Response.Redirect("Anasayfa.aspx");

                }
            }
            else
            {
                Response.Write("Mail adresi veya şifre hatalı ");
            }
        }

        protected void tboxMail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}