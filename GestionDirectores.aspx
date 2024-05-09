<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionDirectores.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion Directores</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
       <nav>
           <span class="logo">ADMIN</span>
       <ul>
           <li>
               <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/GestionPeliculas.aspx">Gestion Peliculas</asp:HyperLink>
           </li>
           <li>
               <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/GestionDirectores.aspx">Gestion Directores</asp:HyperLink>
           </li>
       </ul>
   </nav>
              <h1>Gestion Directores de peliculas</h1>

    <form id="form1" runat="server">
        <div class="create_update">
            <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label3" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar Director" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Actualizar" />

        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:CommandField ButtonType="Button" HeaderText="Accion" ShowDeleteButton="True" ShowHeader="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT ID, apellido, nombre FROM Directores" DeleteCommand="DELETE FROM Peliculas WHERE idDirector = @ID;


DELETE FROM Directores WHERE ID = @ID;" UpdateCommand="UPDATE Directores SET apellido = @apellido, nombre = @nombre WHERE (ID = @ID)">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" />
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
