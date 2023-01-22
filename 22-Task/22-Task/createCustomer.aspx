<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createCustomer.aspx.cs" Inherits="_22_Task.createCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 40%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="display: inline-block;" class="auto-style1 table table-striped">
            <tr>
                <td>Customer Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" required runat="server" ValidationGroup="g1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Age</td>
                <td>
                    <asp:TextBox ID="TextBox2" required runat="server" ValidationGroup="g1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="TextBox3" required runat="server" ValidationGroup="g1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="TextBox4" required runat="server" ValidationGroup="g1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Photo</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" ValidationGroup="g1" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
