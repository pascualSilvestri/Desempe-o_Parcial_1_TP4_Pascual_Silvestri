using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Desempeño_Parcial_1_TP4_Pascual_Silvestri
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            DropDownList2.SelectedIndex = int.Parse( GridView1.SelectedRow.Cells[4].Text) -1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DropDownList1.SelectedItem.Text))
            {
                SqlDataSource1.FilterExpression = " idDirector= " + DropDownList1.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            /*SqlDataSource1.Update();*/
            string nombrePelicula = TextBox1.Text;
            string idPelicula = GridView1.SelectedRow.Cells[0].Text;
            string idDirector = DropDownList2.Text;
            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"UPDATE Peliculas SET nombre = '{nombrePelicula}', idDirector = {idDirector} WHERE ID = {idPelicula}";
            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String namePelicula = TextBox1.Text;
            String idDirector = DropDownList2.Text;

            String cadena = System.Configuration.ConfigurationManager.ConnectionStrings["cadena"].ConnectionString;
            SqlConnection conexion = new SqlConnection(cadena);
            conexion.Open();
            string query = $"INSERT INTO Peliculas ( nombre, idDirector) VALUES ('{namePelicula}', {idDirector})";

            SqlCommand cmd = new SqlCommand(query, conexion);
            cmd.ExecuteNonQuery();
            conexion.Close();
            SqlDataSource1.FilterExpression = string.Empty;
            SqlDataSource1.FilterParameters.Clear();
        }
    }
}