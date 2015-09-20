<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Urunler.aspx.cs" Inherits="TISHT.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <link href="bootstrap-3.3.5/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap-3.3.5/js/npm.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.min.js"></script>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <div class="grids_of_3">
                    <div style="margin: 50px">
                        <asp:DataList ID="dlstTs" runat="server" RepeatColumns="3" Width="1400px"
                            DataKeyField="urunId" OnItemCommand="dlstTs_ItemCommand">
                            <ItemTemplate>
                                <div>
                                    <br />
                                    <asp:Label ID="lblTs" runat="server" Text='<%#Eval("urunadi")%>' CssClass="alert alert-info"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:ImageButton ID="imgResim" ImageUrl='<%#Eval("resimyolu1")%>' runat="server"
                                        AlternateText='<%#Eval("urunadi")%>' CommandName="detay" CommandArgument='<%#Eval("urunId") %>'
                                        CssClass="img-thumbnail" /><br />
                                    <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("birimfiyat")%>  ' CssClass="label label-success"></asp:Label>
                                    <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CommandName="sepet" CssClass="btn btn-primary btn-info " />
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
        </div>
    </div>








</asp:Content>
