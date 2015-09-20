<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Erkek.aspx.cs" Inherits="TISHT.Erkek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <link href="bootstrap-3.3.5/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap-3.3.5/js/npm.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.js"></script>
    <script src="bootstrap-3.3.5/js/bootstrap.min.js"></script>


    <%-- BOOTSTRAPLAR--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">


    <style>
        .modal-header, h4, .close
        {
            background-color: #4682B4;
            color: white !important;
            text-align: center;
            font-size: 30px;
        }

        .modal-footer
        {
            background-color: #4682B4;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <div class="grids_of_3">
                    <div style="margin:50px">
                        <asp:DataList ID="dlstTs" runat="server" RepeatColumns="3" Width="1400px" 
                            OnItemCommand="dlstTs_ItemCommand">
                            <ItemTemplate>
                                 <br />
                                <asp:Label ID="lblTs" runat="server" Text='<%#Eval("urunadi")%>' CssClass="alert alert-info"></asp:Label>
                                <br />
                                <br />
                           <%--    <a href="Detay.aspx" ><asp:ImageButton ID="imgResim" ImageUrl='<%#Eval("resimyolu1")%>' runat="server"
                                    AlternateText='<%#Eval("urunadi")%>' CssClass="img-thumbnail" /></a>--%>
                                    <asp:ImageButton runat="server" ID="imgResim" ImageUrl='<%#Eval("resimyolu1")%>'
                                    AlternateText='<%#Eval("urunadi")%>' CommandArgument='<%#Eval("urunId") %>' CommandName="detay" /><br />
                                    <br />
                               <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("birimfiyat")%> ' CssClass="label label-success" ></asp:Label>
                                <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CommandName="Sepet" CssClass="btn btn-primary btn-info " />
                                <br />
                                <br />
                                <br />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
