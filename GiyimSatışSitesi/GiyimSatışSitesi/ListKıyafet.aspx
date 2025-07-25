<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListKıyafet.aspx.cs" Inherits="GiyimSatışSitesi.ListKıyafet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <!-- Flexbox düzeni için container div -->
        <div class="product-gallery">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="3">
                <ItemTemplate>
                    <div class="product-item">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" Height="330px" ImageUrl='<%# Eval("KiyafetFoto") %>' Width="312px" />
                        <div class="product-details">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("Cinsiyet") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Labelİsim" runat="server" Text='<%# Eval("KiyafetIsim") %>'></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("KiyafetFiyat") %>' ForeColor="#CCCC00"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text="TL"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True" Text='<%# Eval("KiyafetAciklama") %>' Width="321px" style="margin-left: 33" BorderColor="Black"></asp:TextBox>
                            <br />
                            <br />                        
                            <br />
                            <br />
                            <br />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </form>
</asp:Content>