<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Detay.aspx.cs" Inherits="TISHT.Detay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        var prodGallery = jQblvg.parseJSON('{"prod_1":{"main":{"orig":"images/0001-2.jpg","main":"images/large/0001-2.jpg","thumb":"images/small/0001-2.jpg","label":""},"gallery":{"item_0":{"orig":"images/0001-2.jpg","main":"images/large/0001-2.jpg","thumb":"images/small/0001-2.jpg","label":""},"item_1":{"orig":"images/0001-1.jpg","main":"images/large/0001-1.jpg","thumb":"images/small/0001-1.jpg","label":""},"item_2":{"orig":"images/0001-5.jpg","main":"images/large/0001-5.jpg","thumb":"images/small/0001-5.jpg","label":""},"item_3":{"orig":"images/0001-3.jpg","main":"images/large/0001-3.jpg","thumb":"images/small/0001-3.jpg","label":""},"item_4":{"orig":"images/0001-4.jpg","main":"images/large/0001-4.jpg","thumb":"images/small/0001-4.jpg","label":""}},"type":"simple","video":false}}'),
            gallery_elmnt = jQblvg('.product-img-box'),
            galleryObj = new Object(),
            gallery_conf = new Object();
        gallery_conf.moreviewitem = '<a class="cs-fancybox-thumbs" data-fancybox-group="thumb" style="width:64px;height:85px;" href=""  title="" alt=""><img src="" src_main="" width="64" height="85" title="" alt="" /></a>';
        gallery_conf.animspeed = 200;
        jQblvg(document).ready(function () {
            galleryObj[1] = new prodViewGalleryForm(prodGallery, 'prod_1', gallery_elmnt, gallery_conf, '.product-image', '.more-views', 'http:');
            jQblvg('.product-image .cs-fancybox-thumbs').absoluteClick();
            jQblvg('.cs-fancybox-thumbs').fancybox({
                prevEffect: 'none',
                nextEffect: 'none',
                closeBtn: true,
                arrows: true,
                nextClick: true,
                helpers: {
                    thumbs: {
                        width: 64,
                        height: 85,
                        position: 'bottom'
                    }
                }
            });
            jQblvg('#wrap').css('z-index', '100');
            jQblvg('.more-views-container').elScroll({ type: 'vertical', elqty: 4, btn_pos: 'border', scroll_speed: 400 });

        });

        function initGallery(a, b, element) {
            galleryObj[a] = new prodViewGalleryForm(prods, b, gallery_elmnt, gallery_conf, '.product-image', '.more-views', '');
        };
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="main_bg">
        <div class="wrap">
            <div class="main">
                <!-- start content -->
                <div class="single">
                    <!-- start span1_of_1 -->
                    <div class="left_content">
                        <div class="span1_of_1">
                            <!-- start product_slider -->
                            <div class="product-view">
                                <div class="product-essential">
                                    <div class="product-img-box">
                                        <asp:DataList ID="Resim" runat="server">
                                            <ItemTemplate>
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("resimyolu2") %>' />
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </div>
                                </div>
                            </div>
                            <!-- end product_slider -->
                        </div>
                        <!-- start span1_of_1 -->
                        <div class="span1_of_1_des">
                            <div class="desc1">

                                <asp:DataList ID="dlstTs" runat="server" DataKeyField="urunId"
                                    OnItemCommand="lblTs_ItemCommand">
                                    <ItemTemplate>
                                        <h3>
                                            <asp:Label ID="lblTs" runat="server" Text='<%#Eval("urunadi")%>'></asp:Label>
                                            <asp:TextBox ID="txtAdet" runat="server" text="1" Visible="false"></asp:TextBox>
                                        </h3>
                                        <br />
                                        <h4>
                                            <p>
                                                <asp:Label ID="lblBil" runat="server" Text='<%#Eval("urunbilgisi")%>'></asp:Label>
                                            </p>
                                            <br />
                                            <div class="available">
                                            <h4>ÜRÜNÜN FİYATI :</h4>
                                                <p>
                                                    <asp:Label ID="lblFiyat" runat="server" Text='<%#Eval("birimfiyat")%> ' CssClass="par"></asp:Label>
                                                </p>
                                            </div>
                                        </h4>
                                        <div class="available">
                                            <div class="btn_form">
                                                <form>
                                                    <asp:Button ID="btnEkle" runat="server" Text="Sepete Ekle" CssClass="myButton" CommandName="sepet" />
                                                </form>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>


                                <div class="share-desc">
                                    <div class="share">
                                        <h4>Sosyal Medyada Paylaş:</h4>
                                        <ul class="share_nav">
                                            <li><a href="#">
                                                <img src="images/facebook.png" title="facebook"></a></li>
                                            <li><a href="#">
                                                <img src="images/twitter.png" title="Twiiter"></a></li>
                                            <li><a href="#">
                                                <img src="images/rss.png" title="Rss"></a></li>
                                            <li><a href="#">
                                                <img src="images/gpluse.png" title="Google+"></a></li>
                                        </ul>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <!-- start tabs -->
                        <section class="tabs">
                            <input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked">
                            <label for="tab-1" class="tab-label-1">İADE GARANTİSİ</label>

                            <input id="tab-2" type="radio" name="radio-set" class="tab-selector-2">
                            <label for="tab-2" class="tab-label-2">ÖDEME BİLGİLERİ</label>

                            <input id="tab-3" type="radio" name="radio-set" class="tab-selector-3">
                            <label for="tab-3" class="tab-label-3">ÜRÜN DEĞİŞİMİ</label>

                            <div class="clear-shadow"></div>

                            <div class="content">
                                <div class="content-1">
                                    <p class="para top">
                                        <span>İADE/DEĞİŞİM İŞLEMİNİ NASIL YAPABİLİRİM?</span>
                                        <ul>
                                            <li>T-SHIT kullanıcılarına %100 iade/değişim garantisi veriyor.</li>
                                            <li>Hangi sebeple olursa olsun satın aldığın ürün/ürünleri teslim tarihinden itibaren
                                                30 gün içerisinde iade edebilir ya da
                                        stokta olan bir ürünle değiştirebilirsin.</li>
                                            <li>Ayrıca, bu süreçteki Türkiye içi tüm kargo masrafları bize ait.</li>

                                            <li>Ürünleri ve faturasını, faturanın arkasına talebini (değişim için stokta olan hangi
                                                tasarım/beden ile değiştirmek istediğini,
                                        iade için “iadedir” notunu) yazarak, Türkiye’den sipariş verdiysen Aras ya da Yurtiçi
                                        Kargo ile ücretsiz olarak (KAFT ödemeli), Türkiye dışından sipariş verdiysen dilediğin
                                        kargo ile aşağıdaki KAFT iade/değişim adresine gönderebilirsin.</li>

                                            <li>Eğer faturanı kaybettiysen, sorun değil; fatura yerine bir kağıda okunaklı olarak
                                                sipariş numaranı ve yapılmasını istediğin
                                        işlemi yine aynı şekilde yazıp gönderebilirsin.</li>

                                            <br />
                                            <br />

                                            <span>
                                                <li>KAFT İade/Değişim Adresi:<br />
                                                    KAFT Tasarım Tekstil San. ve Tic. A.Ş.<br />
                                                    Şehit Ahmet Sk. Mecidiyeköy İş Merkezi No: 4/52 34387 Şişli/İstanbul<br />
                                                    Tel: +90 212 2673634</li>
                                            </span>
                                        </ul>
                                        <div class="clear"></div>
                                </div>
                                <div class="content-2">
                                    <p class="para">
                                        <span>ÖDEMEYİ NASIL YAPABİLİRİM?</span><br />
                                        Ödemeni sipariş aşamasında sunduğumuz seçeneklerden birini kullanarak yapabilirsin;
                                        <ul class="qua_nav">
                                            <li>Kredi Kartı, Banka Kartı, Paypal, Havale/EFT 
                                        Havale/EFT Banka Bilgileri:
                                                <br />
                                                KAFT TASARIM<br />

                                                Banka: GARANTİ BANKASI
                                                <br />
                                                IBAN(TRY): TR81 0006 2000 3570 0006 2958 82
                                                <br />

                                                <br />
                                                Banka: İŞ BANKASI
                                                <br />
                                                IBAN(TRY): TR41 0006 4000 0011 0571 1020 00
                                                <br />
                                                <br />
                                            </li>
                                        </ul>
                                        <p class="para">
                                            KREDİ KARTINA TAKSİT YAPIYOR MUSUNUZ?<br />
                                            <ul>
                                                <li>Anlaşmalı olduğumuz kredi kartlarına taksit imkanı sunuyoruz. </li>
                                            </ul>
                                        </p>
                                        <br />
                                        <p class="para">
                                            SİPARİŞ VERDİM, NASIL TAKİP EDEBİLİRİM?<br />
                                            <ul>
                                                <li>Siparişini, üye girişi yapıp profiline girdikten sonra "Siparişlerim" sekmesinden
                                                    takip edebilirsin ya da sipariş numaran ve siparişi verirken kullandığın emailini
                                                    kullanarak sipariş takibi sayfamızdan da takip edebilirsin.<br />
                                                </li>
                                            </ul>
                                        </p>
                                    </p>
                                </div>


                                <div class="content-3">
                                    <p class="para top">
                                        SİPARİŞİMİ KAÇ GÜNCE İADE EDEBİLİR YA DA DEĞİŞTİREBİLİRİM?<<br />
                                        <p class="para top">
                                            <ul>
                                                <li>Hangi sebeple olursa olsun satın aldığın ürün/ürünleri teslim tarihinden itibaren
                                                    30 gün içerisinde, Türkiye’den sipariş verdiysen Aras ya da Yurtiçi Kargo ile ücretsiz
                                                    olarak (KAFT ödemeli), Türkiye dışından sipariş verdiysen dilediğin kargo ile iade
                                                    edebilir ya da da stokta olan bir ürünle değiştirebilirsin.</li>
                                                <br />
                                            </ul>
                                        </p>
                                        <p class="para top">
                                            <span>İADE ETTİĞİM ÜRÜNÜN GERİ ÖDEMESİ NE ZAMAN YAPILIR?</span>
                                            <br />
                                            <ul>
                                                <li>İade kargon KAFT'a ulaştıktan ve ürün kontrolü tamamlandıktan sonra 24 saat içerisinde
                                                    sana bir bilgilendirme e-postası gönderiyoruz ve iaden için bankana talimat veriyoruz.
                                                    Geri ödemen normal şartlar altında 3 iş günü içerisinde hesabına yansıyacaktır.
                                                </li>
                                                <br />
                                            </ul>
                                            <ul>
                                                <li>Not: Ödemenin kartına yansıması bankaların işlem sürelerine göre farklılık gösterebilmektedir.
                                                    Bankana bağlı olarak, maksimum 10 iş günü içinde iade tutarı kartına iade edilecektir.
                                                </li>
                                            </ul>
                                        </p>
                                        <div class="clear"></div>
                                </div>
                            </div>
                        </section>
                        <!-- end tabs -->
                    </div>
                    <!-- start sidebar -->

                    <div class="left_sidebar">
                        <div class="sellers">
                            <h4 style="text-align: center">İlginizi Çekebilecek Ürünler</h4>
                            <div class="single-nav">
                                <ul>
                                    <li>
                                        <asp:DataList ID="dlstTsY" runat="server" RepeatColumns="1">
                                            <ItemTemplate>
                                                <center><asp:Label ID="lblTs" runat="server" Text='<%#Eval("urunadi")%>' class="bas"></asp:Label></center>
                                                <a href="Detay.aspx">
                                                    <asp:ImageButton ID="imgResim" ImageUrl='<%#Eval("resimyolu1")%>' runat="server"
                                                        AlternateText='<%#Eval("urunadi")%>' /></a><br />
                                                <br />
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </li>
                                </ul>
                            </div>
                            <div class="banner-wrap bottom_banner color_link">
                                <a href="#" class="main_link">
                                    <figure>
                                        <img src="images/delivery.png" alt="">
                                    </figure>
                                    <h5><span>Ücretsiz Kargo</span><br>
                                        100 ₺ Üstüne</h5>
                                    <p>Mağazadaki tüm ürünler için geçerli.</p>
                                </a>
                            </div>
                            <div class="brands">
                                <h1>Git</h1>
                                <div class="field">
                                    <select class="select1">
                                        <option>Lütfen Seçiniz</option>
                                        <option>Ürünler</option>
                                        <option>Erkek</option>
                                        <option>Kadın</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end sidebar -->
                    <div class="clear"></div>
                </div>
                <!-- end content -->
            </div>
        </div>
    </div>

</asp:Content>
