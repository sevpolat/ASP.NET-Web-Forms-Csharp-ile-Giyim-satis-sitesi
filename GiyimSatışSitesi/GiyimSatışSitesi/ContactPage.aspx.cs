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
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand commandadd = new SqlCommand("Insert into TableIletisim (IletisimMesaj,IletisimMail,IletisimIsmi) values (@pmsg,@pmail,@pname)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandadd.Parameters.AddWithValue("@pmsg",tboxMessage.Text);

            commandadd.Parameters.AddWithValue("@pmail", tboxMail.Text);

            commandadd.Parameters.AddWithValue("@pname", tboxName.Text);

            commandadd.ExecuteNonQuery();

            lblMessage.Visible = true;
        }

        protected void tboxName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}