using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño_Parcial_1_TP4_Pascual_Silvestri
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String namePelicula = TextBoxPeliculas.Text;
            String idDirector = DropDownListDirectores.Text;

            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"INSERT INTO Peliculas ( nombre, idDirector) VALUES ('{namePelicula}', {idDirector})";

            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}