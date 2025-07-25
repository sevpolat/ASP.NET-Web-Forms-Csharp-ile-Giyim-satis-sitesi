<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="GiyimSatışSitesi.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified" style="width:100%; text-align:center;">
            <!-- İndirim Fotoğrafı -->
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="499px" Width="1261px" ImageUrl="~/images/ss.PNG" />
                </td>
            </tr>
            <!-- İndirim Mesajı -->
            <tr>
                <td style="padding-top: 20px;">
                    <asp:Label ID="Label1" runat="server" Text="Stoklarla sınırlıdır."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="15 Mart tarihine kadar seçili ürünlerde geçerlidir."></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>