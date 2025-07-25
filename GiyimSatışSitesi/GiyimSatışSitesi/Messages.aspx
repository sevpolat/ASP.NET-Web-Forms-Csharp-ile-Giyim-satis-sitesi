<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Messages.aspx.cs" Inherits="GiyimSatışSitesi.Messages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>BİLDİRİMLER</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" >
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td style="height: 25px">Gönderen Kişi:
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("IletisimIsmi") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px">Gönderen Kişinin Mail Adresi:<asp:Label ID="Label2" runat="server" Text='<%# Eval("IletisimMail") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 27px">Mesaj:</td>
                                </tr>
                                <tr>
                                    <td style="height: 111px">
                                        <asp:TextBox ID="tboxMesaj" runat="server" Height="87px" Style="margin-top: 0" Text='<%# Eval("IletisimMesaj") %>' TextMode="MultiLine" Width="291px"></asp:TextBox>
                                        <br />
                                        <br />
                                      <a href="MessageDelete.aspx?id=<%# Eval("IletisimID") %>"><div class="btn btn-danger">Mesajı Sil</div></a>  
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
