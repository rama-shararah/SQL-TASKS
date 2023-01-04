<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="_2_1_2023.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 16%;
    }
</style>


<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="auto-style1" style="text-align: right">
            <tr>
                <td>&nbsp;رأيكم يهمنا</td>
            </tr>
            <tr>
                <td>ما هو مدى رضاك عن الخدمات الالكترونية الخاصة بالتخمين؟</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" TextAlign="Left" AutoPostBack="True">
                        <asp:ListItem>ممتاز</asp:ListItem>
                        <asp:ListItem>جيد جدا</asp:ListItem>
                        <asp:ListItem>جيد</asp:ListItem>
                        <asp:ListItem>ضعيف</asp:ListItem>
                        <asp:ListItem>مقبول</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <progress runat="server" id="progress" max="100"></progress>
                    <asp:Label ID="Label1" runat="server" Text="ممتاز" Visible="False"></asp:Label>
                    <br />
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="جيد جدا" Visible="False"></asp:Label>
                    <br />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="جيد" Visible="False"></asp:Label>
                    &nbsp;<br />
                    <asp:Label ID="Label4" runat="server" Text="ضعيف" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="مقبول" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="تصويت" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>



