<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Sepet.aspx.cs" Inherits="TISHT.Sepet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" />


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {

            var navListItems = $('ul.setup-panel li a'),
                allWells = $('.setup-content');

            allWells.hide();

            navListItems.click(function (e) {
                e.preventDefault();
                var $target = $($(this).attr('href')),
                    $item = $(this).closest('li');

                if (!$item.hasClass('disabled')) {
                    navListItems.closest('li').removeClass('active');
                    $item.addClass('active');
                    allWells.hide();
                    $target.show();
                }
            });

            $('ul.setup-panel li.active a').trigger('click');

            // DEMO ONLY //
            $('#activate-step-2').on('click', function (e) {
                $('ul.setup-panel li:eq(1)').removeClass('disabled');
                $('ul.setup-panel li a[href="#step-2"]').trigger('click');
                $(this).remove();
            });
            $('#activate-step-3').on('click', function (e) {
                $('ul.setup-panel li:eq(2)').removeClass('disabled');
                $('ul.setup-panel li a[href="#step-3"]').trigger('click');
                $(this).remove();
            });
        });
    </script>

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

    <div class="container" style="margin-top: 25px">
        <div class="row form-group">
            <div class="col-xs-12">
                <ul class="nav nav-pills nav-justified thumbnail setup-panel">
                    <li class="active"><a href="#step-1">
                        <h4 class="list-group-item-heading" style="background-color: #337ab7">1. ADIM</h4>
                        <p class="list-group-item-text">Sepetim</p>
                    </a></li>
                    <li class="disabled"><a href="#step-2">
                        <h4 class="list-group-item-heading" style="background-color: #337ab7">2.ADIM</h4>
                        <p class="list-group-item-text">Bilgiler</p>
                    </a></li>
                    <li class="disabled"><a href="#step-3">
                        <h4 class="list-group-item-heading" style="background-color: #337ab7">3. ADIM</h4>
                        <p class="list-group-item-text">Ödeme Onayı</p>
                    </a></li>
                </ul>
            </div>
        </div>

        <div class="row setup-content" id="step-1">
            <div class="col-xs-12">
                <div class="col-md-12 well">
                    <br />
                    <center>
                    <asp:GridView ID="gvSepet" runat="server" BackColor="White" 
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                        ForeColor="Black" GridLines="Horizontal" Height="16px" Width="552px" 
                        ShowFooter="True" DataKeyNames="urunId" AutoGenerateColumns="False" 
                            Font-Size="20px">
                        <AlternatingRowStyle BackColor="#E2E2E2" />
                        <Columns>
                            <asp:BoundField DataField="urunadi" HeaderText="Ürün Adı" />


                            <asp:BoundField DataField="birimfiyat" HeaderText="Birim Fiyat" >
                            </asp:BoundField>

                            <asp:BoundField DataField="adet" HeaderText="Adet" >
                            </asp:BoundField>

                            <asp:BoundField DataField="tutar" HeaderText="Tutar" >
                            </asp:BoundField>

                        </Columns>
                        <FooterStyle BackColor="#006699" ForeColor="White" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    
                    <br /><br /><br /><br />

                    <div style="display: inline-block">


                        <asp:Button ID="btnTemizle" runat="server" Text="Sepeti Boşalt" 
                            class="btn btn-primary btn-lg" OnClick="btnTemizle_Click" Width="150px" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                        <asp:Button ID="btnDevam" runat="server" Text="Alışverişe Devam" 
                            class="btn btn-primary btn-lg" OnClick="btnDevam_Click" Width="150px"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                        <button id="activate-step-2" class="btn btn-primary btn-lg"  width:"150px">Sepeti Onayla</button>

                    </div>
                    </center>
                </div>

            </div>
        </div>

        <div class="row setup-content" id="step-2">
            <div class="col-xs-12">
                <div class="col-md-12 well">
                    <div>
                        <div class="contact-form">
                            <form method="post" action="contact-post.html">
                                <div>
                                    <span>
                                        <label>İsim Soyisim</label></span>
                                    <span>
                                        <input name="userName" type="text" class="textbox"></span>
                                </div>
                                <div>
                                    <span>
                                        <label>E-mail</label></span>
                                    <span>
                                        <input name="userEmail" type="text" class="textbox"></span>
                                </div>
                                <div>
                                    <span>
                                        <label>Telefon</label></span>
                                    <span>
                                        <input name="userPhone" type="text" class="textbox"></span>
                                </div>
                                <div>
                                    <span>
                                        <label>Adres</label></span>
                                    <span>
                                        <input name="userPhone" type="text" class="textbox"></span>
                                </div>
                                <div>
                                    <button id="activate-step-3" class="btn btn-primary btn-lg">İleri</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row setup-content" id="step-3">
            <div class="col-xs-12">
                <div class="col-md-12 well">
                    <div class="container">
                        <!-- Trigger the modal with a button -->
                        <div class="container">
                            <div class="row">
                                <!-- You can make it whatever width you want. I'm making it full width
             on <= small devices and 4/12 page width on >= medium devices -->
                                <div class="col-xs-12 col-md-4">
                                    <!-- CREDIT CARD FORM STARTS HERE -->
                                    <div class="panel panel-default credit-card-box">
                                        <div class="panel-heading display-table">
                                            <div class="row display-tr">
                                                <h3 class="panel-title display-td">Ödeme Detayları</h3>
                                                <div class="display-td">
                                                    <img class="img-responsive pull-right" src="http://i76.imgup.net/accepted_c22e0.png">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <form role="form" id="payment-form">
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="form-group">
                                                            <label for="cardNumber">Kart Numarası</label>
                                                            <div class="input-group">
                                                                <input
                                                                    type="tel"
                                                                    class="form-control"
                                                                    name="cardNumber"
                                                                    placeholder="Geçerli Kart Numarası"
                                                                    autocomplete="cc-number"
                                                                    required autofocus />
                                                                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-7 col-md-7">
                                                        <div class="form-group">
                                                            <label for="cardExpiry">
                                                                <span class="hidden-xs">Son Kullanım Tarihi</span><span class="visible-xs-inline">EXP
                                                                    DATE</span>
                                                            </label>
                                                            <input
                                                                type="tel"
                                                                class="form-control"
                                                                name="cardExpiry"
                                                                placeholder="AA / YY"
                                                                autocomplete="cc-exp"
                                                                required />
                                                        </div>
                                                    </div>
                                                    <div class="col-xs-5 col-md-5 pull-right">
                                                        <div class="form-group">
                                                            <label for="cardCVC">Güvenlik Kodu</label>
                                                            <input
                                                                type="tel"
                                                                class="form-control"
                                                                name="cardCVC"
                                                                placeholder="CVC"
                                                                autocomplete="cc-csc"
                                                                required />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="form-group">
                                                            <label for="couponCode">İndirim Kodu</label>
                                                            <input type="text" class="form-control" name="couponCode" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                    </div>
                                                </div>
                                                <div class="row" style="display: none;">
                                                    <div class="col-xs-12">
                                                        <p class="payment-errors"></p>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- CREDIT CARD FORM ENDS HERE -->
                                </div>
                                <div class="col-xs-12 col-md-8" style="font-size: 12pt; line-height: 2em;">
                                    <p>
                                        <h2 style="font-weight: bold">Ödeme Koruma Sistemi:</h2>
                                        <ul>
                                            <li>Alışverişiniz; ürün kontrolü, deneme ve onay süreçlerinden oluşan “Ödeme Koruma
                                                Sistemi”nin<br />
                                                güvencesi altındadır.</li>
                                            <br />
                                            <li style="font-weight: bold">Ödeme Koruma Sistemi, 3 aşamadan oluşmaktadır:</li>
                                            <li>Müşteri, ürünü seçip sepete ekler. Ödeme tamamlandıktan sonra ürünün bedeli, havuz
                                                hesabımıza<br />
                                                aktarılır.</li>
                                            <li>Mağazamız ürünü belirttiği süre içerisinde müşteriye gönderir. Müşteri, ürünü teslim
                                                alıp inceler.</li>
                                            <li>Müşteri, ürünü teslim alıp inceler vesiparişe onay verir. Onay ile satın alma işlemi
                                                tamamlanır.</li>
                                        </ul>
                                    </p>
                                    <br />
                                    <div style="font-style: italic">
                                        <p>
                                            Satın Al Tuşuna Basarak işbu Gizlilik Politikasının hüküm ve şartlarını kabul etmektesiniz.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <button type="button" class="btn btn-success btn-lg" data-toggle="modal" data-target="#myModal">
                            SATIN AL</button>

                        <!-- Modal -->
                        <div class="container">
                            <!-- Trigger the modal with a button -->
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Satın Alma Başarılı.</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div class="text-center">
                                                <strong>Ürününüz 3 iş günü içerisinde evinize teslim edilecektir bizi tercih ettiğiniz için teşekkür ederiz.<br /><br />
                                                    Bizi Tercih Ettiğiniz İçin Teşekkür Ederiz...
                                                </strong>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <%-- <button type="button" class="btn btn-default" data-dismiss="modal" >Kapat</button>--%>
                                            <a href="Default.aspx" class="btn btn-default" role="button">Kapat</a>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
