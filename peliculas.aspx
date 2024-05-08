<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peliculas.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Filtrar por Director"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="apellido" DataValueField="ID">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filtrar" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Desfiltrar" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,idDirector" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="nombreDirector" HeaderText="nombreDirector" SortExpression="nombreDirector" />
                    <asp:BoundField DataField="apellidoDirector" HeaderText="apellidoDirector" SortExpression="apellidoDirector" />
                    <asp:BoundField DataField="idDirector" HeaderText="idDirector" InsertVisible="False" ReadOnly="True" SortExpression="idDirector" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT Peliculas.ID, Peliculas.nombre, Directores.nombre AS nombreDirector, Directores.apellido AS apellidoDirector, Directores.ID AS idDirector FROM Peliculas INNER JOIN Directores ON Peliculas.idDirector = Directores.ID"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
