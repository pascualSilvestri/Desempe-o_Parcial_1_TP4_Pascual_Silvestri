<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionPeliculas.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Gestion Peliculas</title>
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
            <h1>Gestion Peliculas</h1>
    <form id="form1" runat="server">
        <div class="create_update">
            
            <asp:Label ID="Label2" runat="server" Text="Modificar nombre pelicula"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
       
            <asp:Label ID="Label3" runat="server" Text="Modificar Director"></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="apellido" DataValueField="ID">
            </asp:DropDownList>
            
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Agregar Pelicula" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Actualizar" />
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>

        </div>
        <div class="gridView_container"> 
            <div class="filtrado">
                <asp:Label ID="Label1" runat="server" Text="Filtrar por Director"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellido" DataValueField="ID">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desfiltrar" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
            </div>
            <asp:GridView CssClass="gridView" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,idDirector" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" style="margin-right: 0px" PageIndex="8" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="nombreDirector" HeaderText="nombreDirector" SortExpression="nombreDirector" />
                    <asp:BoundField DataField="apellidoDirector" HeaderText="apellidoDirector" SortExpression="apellidoDirector" />
                    <asp:BoundField DataField="idDirector" HeaderText="idDirector" InsertVisible="False" ReadOnly="True" SortExpression="idDirector" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT Peliculas.ID, Peliculas.nombre, Directores.nombre AS nombreDirector, Directores.apellido AS apellidoDirector, Directores.ID AS idDirector FROM Peliculas INNER JOIN Directores ON Peliculas.idDirector = Directores.ID" UpdateCommand="UPDATE Peliculas SET nombre = @nombre, idDirector = @idDirector WHERE ID = @ID" DeleteCommand="DELETE FROM Peliculas WHERE ID = @ID;
">
                <DeleteParameters>
                    <asp:Parameter Name="ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nombre" />
                    <asp:Parameter Name="idDirector" />
                    <asp:Parameter Name="ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
