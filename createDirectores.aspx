<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createDirectores.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
        <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Apellido"></asp:Label>
        <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="Button" />
        <div>
        </div>
    </form>
</body>
</html>
