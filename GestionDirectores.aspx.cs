using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño_Parcial_1_TP4_Pascual_Silvestri
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nombre = TextBox1.Text;
            string apellido = TextBox2.Text;

            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"INSERT INTO Directores ( apellido, nombre ) VALUES ('{apellido}', '{nombre}')";

            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();

            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string nombreDirector = TextBox1.Text;
            string idDIrector = GridView1.SelectedRow.Cells[0].Text;
            string apellidoDirector = TextBox2.Text;

            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"UPDATE Directores SET nombre = '{nombreDirector}', apellido = '{apellidoDirector}' WHERE ID = {idDIrector}";
            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[2].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
        }
    }
}