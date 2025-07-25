<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="GiyimSatışSitesi.ContactPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Ad Soyad:"></asp:Label>
        <br />
        <asp:TextBox ID="tboxName" runat="server" Height="40px" ToolTip="İsminizi giriniz" Width="190px" BorderColor="Silver" EnableTheming="False" OnTextChanged="tboxName_TextChanged" style="margin-left: 14"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Mail:"></asp:Label>
        <br />

        <asp:TextBox ID="tboxMail" runat="server" Height="40px" ToolTip="Mailinizi giriniz" Width="190px" BorderColor="Silver" AutoCompleteType="Email" TextMode="Email" style="margin-left: 14"></asp:TextBox>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Mesaj:"></asp:Label>
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" Height="336px" TextMode="MultiLine" ToolTip="Mesajınızı yazınız" Width="572px" BorderColor="Silver" style="margin-left: 14"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" Height="54px" OnClick="btnSend_Click" Text="Mesajı gönder" Width="206px" BorderColor="Silver" BackColor="Yellow" Font-Bold="True" style="margin-left: 14" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" Visible="False" Font-Italic="True">Mesaj gönderildi!</asp:Label>
    &nbsp;</form>
</asp:Content>
