<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="TisortEkle.aspx.cs" Inherits="TISHT.TisortEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="bootstrap-3.3.5/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <asp:GridView ID="dlstTs" runat="server" Width="1410px" CellPadding="4"
                    ForeColor="#333333" GridLines="None" AutoGenerateColumns="False"
                    DataKeyNames="urunId" OnSelectedIndexChanged="dlstTs_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField SelectText="&gt;&gt;"
                            ShowSelectButton="True">
                            <ItemStyle CssClass="btn btn-primary btn-info "></ItemStyle>
                        </asp:CommandField>
                        <asp:BoundField DataField="urunId" HeaderText="ID">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="urunadi" HeaderText="Adi">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="urunkategori" HeaderText="Kategori">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cinsiyet" HeaderText="Cinsiyet">
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Top" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="adet" HeaderText="Adet">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="birimfiyat" HeaderText="Fiyat">
                            <HeaderStyle HorizontalAlign="Right" />
                            <ItemStyle HorizontalAlign="Right" />
                        </asp:BoundField>
                        <asp:BoundField DataField="beden" HeaderText="Beden">
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="resimyolu1" HeaderText="Resim1" />
                        <asp:BoundField DataField="resimyolu2" HeaderText="Resim2" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <br />
                <div class="contact-form">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Ürün ID"></asp:Label></td>
                            <td>
                                <asp:Label ID="lbluad" runat="server" Text=""></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Ürün Adı"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtUrunAdi" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Ürün Kategorisi "></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtUrunKategorisi" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Cinsiyet "></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtCinsiyet" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Adet "></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtAdet" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Birim Fiyat "></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtBirimFiyat" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Beden"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtBeden" runat="server"></asp:TextBox></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Küçük Resim"></asp:Label></td>
                            <td>
                                <asp:FileUpload ID="fuResim1" runat="server" CssClass="btn btn-primary btn-info " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Büyük Resim "></asp:Label></td>
                            <td>
                                <asp:FileUpload ID="fuResim2" runat="server" CssClass="btn btn-primary btn-info " />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Ürün Bilgisi"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtUrunBilgisi" runat="server" Height="106px"
                                    OnTextChanged="txtUrunBilgisi_TextChanged" TextMode="MultiLine" Width="293px"></asp:TextBox>
                            </td>
                        </tr>

                        <tr class="text-center">

                            <td>
                                <asp:Button ID="btnEkle" runat="server" Text="Kaydet"
                                    CssClass="btn btn-primary btn-info " OnClick="btnEkle_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btnDegistir" runat="server" Text="Değiştir"
                                    CssClass="btn btn-primary btn-info " OnClick="btnDegistir_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btnSil" runat="server" Text="Sil"
                                    CssClass="btn btn-primary btn-info " OnClick="btnSil_Click" />
                            </td>

                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
