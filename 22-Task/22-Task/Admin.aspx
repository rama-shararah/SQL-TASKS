<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="_22_Task.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome Admin</h1>
        <div>



            <table style="display: inline-block;" class="w-50 table table-striped">
                <tr>
                    <td>Number of customer</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Average of Age</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Max Age</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>

            <br />
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="create customer" />
            <br />
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="search by name" ClientIDMode="AutoID" />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="search by id" OnClick="Button3_Click" />

        </div>
        <br />

        <asp:GridView class="table table-striped" ID="GridView1" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>

        </asp:GridView>
        <br />


        <asp:GridView class="table table-striped" ID="GridView2" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Photo" HeaderText="photo">
                    <ControlStyle Width="50px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>





    </form>
</body>
</html>
