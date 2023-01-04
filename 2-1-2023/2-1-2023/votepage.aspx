<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="votepage.aspx.cs" Inherits="_2_1_2023.votepage" %>

<%@ Register Src="WebUserControl1.ascx" TagName="WebUserControl1" TagPrefix="uc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:WebUserControl1 ID="WebUserControl11" runat="server" />
        </div>
    </form>
</body>
</html>
