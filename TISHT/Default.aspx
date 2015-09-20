<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="TISHT.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="js/jquery-1.11.3.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        var baslikText = this.document.getElementById("baslik");
        baslikText.innerText = "Tişört";
    </script>



    <div id="da-slider" class="da-slider">
        <div class="da-slide">
            <h2>ERKEK</h2>
            <p>
                Tişörtünün kalıbı, rahat ve biraz salaştır. Yakası ferahtır. Fit bir kalıp değildir.
            </p>
            <a href="Erkek.aspx" class="da-link">GÖZAT</a>
            <div class="da-img">
                <img src="images/slider1.jpg" alt="image01" />
            </div>
        </div>
        <div class="da-slide">
            <h2>KADIN</h2>
            <p>
                Tişörtünün kalıbı rahat ve hafif dökümlüdür. Bele çok oturmaz, dar kesim değildir.Yakası
                ferahtır.
            </p>
            <a href="Kadin.aspx" class="da-link">GÖZAT</a>
            <div class="da-img">
                <img src="images/slider2.jpg" alt="image01" />
            </div>
        </div>
        <div class="da-slide">
            <h2>YIKAMA TALIMATLARI</h2>
            <p>
                Bu talimatlar için kullanılan kaba etiketler bize çok can sıkıcı geliyor. Bu yüzden
                etiketi kaldırdık, talimatları baskıyla yazdık. Artık rahatsız edemeyecek.
            </p>
            <a href="Erkek.aspx" class="da-link">GÖZAT</a>
            <div class="da-img">
                <img src="images/slider3.jpg" alt="image01" />
            </div>
        </div>
        <div class="da-slide">
            <h2>AMBALAJ</h2>
            <p>Ambalajlarımız tamamen kraft malzemeden ve geri dönüşümlü olarak tasarlandı.</p>
            <a href="Urunler.aspx" class="da-link">GÖZAT</a>
            <div class="da-img">
                <img src="images/slider4.jpg" alt="image01" />
            </div>
        </div>
        <nav class="da-arrows">
            <span class="da-arrows-prev"></span>
            <span class="da-arrows-next"></span>
        </nav>
    </div>

    <div class="main_bg1">
        <div class="wrap">
            <div class="main1">
                <h2>EN ÇOK SATILANLAR</h2>
            </div>
        </div>
    </div>

    <div class="wrap">
        <!----start-img-cursual---->
        <div id="owl-demo" class="owl-carousel">
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c1.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=11">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=11" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c2.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=15">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=15" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c3.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=24">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=24" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c4.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=20">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=20" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c5.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=2">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=2" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c6.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=25">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=25" class="btn">GİT</a>
                </div>
            </div>
            <div class="item" onclick="location.href='Detay.aspx';">
                <div class="cau_left">
                    <img class="lazyOwl" data-src="images/c7.jpg" alt="Lazy Owl Image">
                </div>
                <div class="cau_left">
                    <h4><a href="http://localhost:5186/Detay.aspx?ID=22">Hemen Gözat</a></h4>
                    <a href="http://localhost:5186/Detay.aspx?ID=22" class="btn">GİT</a>
                </div>
            </div>
        </div>
        <!----//End-img-cursual---->
    </div>

    <div class="main_bg1">
        <div class="wrap">
            <div class="main1">
                <h2>EN SON EKLENENLER</h2>
            </div>
        </div>
    </div>

        <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <div class="grids_of_3">
                    <asp:DataList ID="dlstTs" runat="server" RepeatColumns="3" Width="1400px" DataKeyField="urunId" OnItemCommand="dlstTs_ItemCommand">
                        <ItemTemplate>
                            <div>
                                <br />
                                <asp:Label ID="lblTs" runat="server" Text='<%#Eval("urunadi")%>' CssClass="btn btn-outlined btn-info "></asp:Label>
                                <br />
                                <br />
                                <asp:ImageButton runat="server" ID="imgResim" ImageUrl='<%#Eval("resimyolu1")%>'
                                    AlternateText='<%#Eval("urunadi")%>' CommandArgument='<%#Eval("urunId") %>' CommandName="detay" /><br />
                                <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("birimfiyat")%> ' CssClass="par"></asp:Label>
                                <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CssClass="myButton" CommandName="sepet" />
                                <asp:TextBox ID="txtAdet" runat="server" text="1" Visible="false"></asp:TextBox>
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

</asp:Content>
