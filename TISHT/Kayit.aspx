<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Kayit.aspx.cs" Inherits="TISHT.Kayit" %>

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
                <div class="contact">

                    <div class="contact-form">
                        <div class="grids_of_4">
                            <div class="grid1_of_4">
                                <h2>KAYIT OL</h2>
                                <form method="post" action="contact-post.html">
                                    <div>
                                        <span>
                                            <label>İsim Soyisim</label></span>
                                        <span>
                                            <input name="isimSoyisim" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>Kullanıcı Adı</label></span>
                                        <span>
                                            <input name="kullaniciAdi" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>Şifre</label></span>
                                        <span>
                                            <input name="sifre" type="text" class="textbox"></span>
                                    </div>

                                    <div>
                                        <span>
                                            <label>Re-Şifre</label></span>
                                        <span>
                                            <input name="resifre" type="text" class="textbox"></span>
                                    </div>

                                    <div>
                                        <span>
                                            <label>E-Mail</label></span>
                                        <span>
                                            <input name="email" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>Telefon</label></span>
                                        <span>
                                            <input name="telefon" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>İl</label></span>
                                        <span>
                                            <input name="il" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>İlçe</label></span>
                                        <span>
                                            <input name="ilce" type="text" class="textbox"></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>Adres</label></span>
                                        <span>
                                            <textarea name="adres" type="text" class="textbox"></textarea></span>
                                    </div>

                                    <div>
                                            <a href="#" class="btn btn-lg btn-primary disabled" >ÇOK YAKINDA</a>
                                    </div>
                            </div>

                                <div class="ser-main">
                                    <h4 style="text-align:center">Hizmetlerimiz</h4>
                                    <p class="para">
                                        Baskıda “Emprime / Serigrafi” tekniğini kullanıyoruz. Bu; hava alan bir baskı türüdür.
                                        Dokunduğunuzda plastik değil, yumuşak bir his alırsınız, çünkü kumaşla tamamen bütünleşiktir.
                                        Yeni nesil dijital baskıların dezavantajlarını içermez. Kullanılan boyalar tamamen
                                        organik, sertifikalı ve güvenlidir; insan sağlığına zarar vermez.

Baskılarımız sonsuza kadar solmaz diye bir iddiamız yok, ama çoğu baskılı tişörtten çok daha uzun ömürlü olacağına emin
                                        olabilirsin.
                                    </p>
                                    <div class="ser-grid">
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon1.png" alt=""></a>
                                            <h5><a href="Detay.aspx">7/24 Müşteri Desteği</a></h5>
                                            <p class="para">Destek ekiplerimizin bilgi ve teknik donanımları, iletişim ve erişimi
                                                en yüksek düzeyde tutacak şekilde planlanmıştır.</p>
                                        </div>
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon2.png" alt=""></a>
                                            <h5><a href="Detay.aspx">Hijyenik Ürünler</a></h5>
                                            <p class="para">Kumaş üretiminde kullanılan boyalar, sertifikalı ve güvenlidir; insan
                                                sağlığına zarar vermez.</p>
                                        </div>
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon3.png" alt=""></a>
                                            <h5><a href="Detay.aspx">Güvenli Teslimat</a></h5>
                                            <p class="para">Tüm siparişleriniz güvenli ve gizli paketlerdedir. Taşıma yapan kurye
                                                veya kargo firması kesinlikle ürün içeriğini bilemektedir.</p>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="ser-grid">
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon4.png" alt=""></a>
                                            <h5><a href="Detay.aspx">Look Book</a></h5>
                                            <p class="para">Tasarım ürünlerimiz lookbook çekimlerinde de çok şık görünüyor. Tasarımın
                                                modayla buluştuğu bu kareleri incelemeni öneririz.</p>
                                        </div>
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon5.png" alt=""></a>
                                            <h5><a href="Detay.aspx">Özgün Ürünler</a></h5>
                                            <p class="para">T-Shit tasarımları yenilikçi, kolay kolay bir benzeri bulunamayan tasarımlardır.
                                                Popüler akımlara kapılmaz.</p>
                                        </div>
                                        <div class="ser-grid-list">
                                            <a href="Detay.aspx">
                                                <img src="images/icon6.png" alt=""></a>
                                            <h5><a href="Detay.aspx">100% Garanti</a></h5>
                                            <p class="para">Alışverişinizi daha güvenli yapabilmeniz için T-Shit.com SSL güvenlik
                                                sertifikası kullanmaktadır.</p>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>

                            </div>

                        </div>
                        </form>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </div>


    </div>
    </div>
</asp:Content>
