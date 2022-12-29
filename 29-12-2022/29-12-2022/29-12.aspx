<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="29-12.aspx.cs" Inherits="_29_12_2022._29_12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 40%; margin-top: 10%;">
            <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Width="239px" BackColor="White"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="239px"></asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
            <br />
            <br />
            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>

    </form>
</body>
</html>
