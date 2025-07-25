using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using GiyimSatışSitesi.classes;


namespace GiyimSatışSitesi
{
    public partial class ListKıyafet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select KiyafetID, KiyafetTurID,Cinsiyet,KiyafetAciklama,KiyafetFoto,KiyafetFiyat,KiyafetTurID,KiyafetIsim from TableKiyafet inner join TableTur on TableKiyafet.KiyafetTurID=TableTur.TurID where KiyafetStok=@pcon", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon",true);

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr; 

            DataList1.DataBind();

            dr.Close();
        }
    }
}