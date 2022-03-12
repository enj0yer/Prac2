<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Prac2.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Имя пользователя<br />
            <asp:TextBox ID="Login" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Login" ErrorMessage="Неверный формат имени пользователя"></asp:RequiredFieldValidator>
            <br />
            Пароль<br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Password" ErrorMessage="Неверный формат пароля" ValidationExpression="^\w{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="Пароль не был введен"></asp:RequiredFieldValidator>
            <br />
            Подтверждение пароля<br />
            <asp:TextBox ID="Password_reply" runat="server" TextMode="Password" OnTextChanged="Password_reply_TextChanged"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Password_reply" ErrorMessage="Пароли не совпадают" Display="Dynamic"></asp:CompareValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Password_reply" Display="Dynamic" ErrorMessage="Пароль не был подтвержден"></asp:RequiredFieldValidator>
            <br />
            Электронная почта<br />
            <asp:TextBox ID="Email" runat="server" OnTextChanged="Email_TextChanged"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Email" ErrorMessage="Неверный формат Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Email не был введен"></asp:RequiredFieldValidator>
            <br />
            Возраст<br />
            <asp:TextBox ID="Age" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="Недопустимое значение возраста" MaximumValue="65" MinimumValue="18" Display="Dynamic"></asp:RangeValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Age" Display="Dynamic" ErrorMessage="Возраст не был введен"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Отправить" />
        </div>
    </form>
</body>
</html>
