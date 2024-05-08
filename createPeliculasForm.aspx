<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createPeliculasForm.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:TextBox ID="TextBoxPeliculas" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <asp:DropDownList ID="DropDownListDirectores" runat="server" DataSourceID="SqlDataSource1" DataTextField="apellido" DataValueField="ID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
