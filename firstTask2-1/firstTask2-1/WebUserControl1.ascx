<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="firstTask2_1.WebUserControl1" %>
<style>
    .md {
        width: 150px;
        display: inline-block;
        border: solid black 1px;
        border-radius: 7px;
    }

    .sd {
        background-color: cornflowerblue;
        border-radius: 7px;
        color: white;
    }
</style>
<asp:Label ID="Label1" runat="server" Text="Your opinion is important"></asp:Label>
<p>
    <asp:Label ID="Label2" runat="server" Text=" How much you are agree with our sercives ?"></asp:Label>
</p>
<p>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged1">
        <asp:ListItem Value="1">Exellent</asp:ListItem>
        <asp:ListItem Value="2">very good</asp:ListItem>
        <asp:ListItem Value="3">good</asp:ListItem>
        <asp:ListItem Value="4">poor</asp:ListItem>
    </asp:RadioButtonList>
</p>
<div id="div1" runat="server" visible="false">
    <div>Exellent</div>
    <div class="md">
        <asp:Label ID="exp" runat="server" Text="" Width="" Height="20px" CssClass="sd"></asp:Label>
    </div>
    <div>very good</div>
    <div class="md">
        <asp:Label ID="vgp" runat="server" Text="" Width="" Height="20px" CssClass="sd"></asp:Label>
    </div>
    <div>good</div>
    <div class="md">
        <asp:Label ID="gp" runat="server" Text="" Width="" Height="20px" CssClass="sd"></asp:Label>
    </div>
    <div>poor</div>
    <div class="md">
        <asp:Label ID="ppp" runat="server" Text="" Width="" Height="20px" CssClass="sd"></asp:Label>
    </div>

</div>
<p>
    <asp:Button ID="Button1" runat="server" Text="vote" OnClick="Button1_Click" />
</p>

