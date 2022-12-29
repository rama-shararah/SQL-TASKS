<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="color.aspx.cs" Inherits="_29_12_2022.color" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" Width="92px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>blue</asp:ListItem>
                <asp:ListItem>green</asp:ListItem>
                <asp:ListItem>red</asp:ListItem>
                <asp:ListItem>black</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="click" />
        </div>
    </form>
</body>
</html>
