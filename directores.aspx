<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="directores.aspx.cs" Inherits="Desempeño_Parcial_1_TP4_Pascual_Silvestri.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
                    <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cadena %>" SelectCommand="SELECT * FROM [Directores]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
