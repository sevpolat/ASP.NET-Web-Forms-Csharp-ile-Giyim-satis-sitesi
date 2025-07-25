<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="KıyafetEkle.aspx.cs" Inherits="GiyimSatışSitesi.KıyafetEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td style="width: 177px; height: 157px">&nbsp;<br />
                    <br />
                    <br />
                    <br />
                    Kıyafet Türü:<br />
                    <br />
                    Kazak = 1<br />
                    Pantolon = 2<br />
                    Ayakkabı = 3<br />
                    Tişört = 4<br />
                    Çanta = 5<br />
                    Gömlek = 6<br />
                    Mont = 7<br />
                </td>
                <td style="height: 157px">
                    <asp:TextBox ID="tboxTur" runat="server" TextMode="Number" BorderColor="Silver"></asp:TextBox>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td style="width: 177px; height: 43px">Cinsiyet:</td>
                <td style="height: 43px">
                    <asp:TextBox ID="tboxGender" runat="server" BorderColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 177px; height: 40px">Kıyafet Açıklama:</td>
                <td style="height: 40px">
                    <asp:TextBox ID="tboxAciklama" runat="server" Height="34px" Width="188px" TextMode="MultiLine" BorderColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 177px; height: 40px">Kıyafet Fotoğrafı:</td>
                <td style="height: 40px">
                    <asp:TextBox ID="tboxFoto" runat="server" TextMode="Url" BorderColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 177px; height: 40px">Kıyafet Fiyatı:</td>
                <td style="height: 40px">
                    <asp:TextBox ID="tboxFiyat" runat="server" TextMode="Number" BorderColor="Silver"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 177px; height: 40px">Onaylama (True?):<br />
                    <br />
                    <br />
                </td>
                <td style="height: 40px">
                    <asp:TextBox ID="tboxStok" runat="server" Width="181px" BorderColor="Silver"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="btnEkle" runat="server" Height="35px" OnClick="btnEkle_Click" Text="Ekle" Width="169px" BackColor="Yellow" BorderColor="Silver" />
                </td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" Visible="False" Font-Italic="True">Kıyafet Eklendi!</asp:Label>
    </form>
</asp:Content>
