<%@ Page Language="C#" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Do Turizm</title>
    <link href="Anasayfa.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Shippori+Mincho:wght@500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    <style>
        body {
            background-color: #F0F0F0;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">
        <header>
            <div class="section">
                <div class="content-title">
                    <div class="left-top" style="background-color: #2B2A30">
                        <a href=""></a>
                    </div>
                    <div class="right-top" style="background-color: #2B2A30">
                        <a href="#"><i class="far fa-user"></i></a>
                        <a href="iletisim.aspx">BİZİMLE İLETİŞİME GEÇ</a>
                        <a href="">|</a>
                        <a href="tel:01234567890">0123 456 78 90</a>
                    </div>
                </div>
            </div>
        </header>

        <div class="" style="background-color: #F0F0F0;">
            <div class="logo-box">
                <a href="\">
                    <img src="img/logo.png" alt=""></a>
            </div>
        </div>

        <div class="links">
            <div class="content-links responsive">
                <a href="#" class="header-icon">
                    <i class="fas fa-bars"></i>
                </a>

                <div class="display" style="background-color: #2B2A30">

                    <b><a href="Default.aspx" class="" style="color: white">ANASAYFA</a></b>
                    <b><a href="BiletAl.aspx" class="" style="color: white">BİLET AL</a></b>
                    <b><a href="Galeri.aspx" class="" style="color: white">GALERİ</a></b>
                    <b><a href="Hakkimizda.aspx" class="" style="color: white">HAKKIMIZDA</a></b>
                    <b><a href="iletisim.aspx" class="" style="color: white">İLETİŞİM</a></b>

                </div>
            </div>
        </div>

        <div class="" style="background-color: #2B2A30">
            &nbsp;<br />
            &nbsp;<br />

        </div>

        <div class="" style="background-color: #2B2A30">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="kart">
                            <div class="konteynir">
                                <h1><b class="" style="color: white">İletişim</b></h1>
                            </div>
                            <div class="konteynir">
                                <h2><b class="" style="color: #999999">Do Turizm Lim. A.Ş.</b></h2>
                                <h2><b class="" style="color: #999999">Adres:İstanbul caddesi no 82 Esenyurt/İstanbul</b></h2>
                                <h2><b class="" style="color: #999999">Telefon numaramız: 0123 456 78 90</b></h2>
                                <h2><b class="" style="color: #999999"><a href="https://www.facebook.com/">Facebook adresimize gitmek için tıklayın</a></b></h2>
                                <h2><b class="" style="color: #999999"><a href="https://www.twitter.com/">Twitter adresimize gitmek için tıklayın</a></b></h2>
                                <h2><b class="" style="color: #999999"><a href="https://www.instagram.com/">İnstagram adresimize gitmek için tıklayın</a></b></h2>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="kart">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d68125.31636688462!2d28.7227509508263!3d41.0090182616318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14caa0aff133954b%3A0x7d1d5f2e9c75e2e9!2sEsenyurt%20Belediyesi!5e0!3m2!1str!2str!4v1620291997839!5m2!1str!2str" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="" style="background-color: #2B2A30">
            &nbsp;<br />
            &nbsp;<br />
            &nbsp;<br />
            &nbsp;<br />

        </div>


        <div class="view">
            <div class="content-view">
                <div class="content-number-box" style="color: #ffffff">
                    <div class="number-box">
                        <p class="">
                            <img src="img/ucak3.png" alt="" style="width: 50px">
                        </p>
                        <asp:Label ID="lblucak" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">UÇAK</p>
                    </div>

                    <div class="number-box">
                        <p class="">
                            <img src="img/basariliucus.png" alt="" style="width: 50px">
                        </p>
                        <asp:Label ID="lblucus" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">UÇUŞ SAYISI</p>
                    </div>

                    <div class="number-box" style="color: #ffffff">
                        <p class="">
                            <img src="img/koltuk.png" alt="" style="width: 50px">
                        </p>
                        <asp:Label ID="lblkapasite" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">YOLCU KAPASİTESİ</p>
                    </div>

                    <div class="number-box" style="color: #ffffff">
                        <p class="">
                            <img src="img/mutlumusteri.png" alt="" style="width: 50px">
                        </p>
                        <asp:Label ID="lblyolcu" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">MUTLU MÜŞTERİ</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="contact">
            <div class="content-box" style="background-color: #4A3024">
                <div class="icon-box">
                    <img src="img/icon.png" alt="" style="width: 50px">
                </div>
                <div class="text-p">
                    <p class="big-p" style="color: #ffffff">Hemen Ara + 90 123 456 78 90</p>
                    <p class="small-p" style="color: #ffffff">Bilgi almak ve rezervasyon yaptırmak için hemen ara!</p>
                </div>
                <asp:Button class="button-contact" ID="altbtnBiletAl" runat="server" Text="Bilet Al" Font-Bold="True" Font-Italic="True" Font-Size="15px" OnClick="altbtnBiletAl_Click" Height="50px" Width="240px" />
                <asp:Button class="button-contact" ID="altiletisimegec" runat="server" Text="İletişime geç" Font-Bold="True" Font-Italic="True" Font-Size="15px" OnClick="altiletisimegec_Click" Height="50px" Width="240px" />
            </div>
        </div>



        <footer>
            <div class="footer">
                <div class="content-footer" style="background-color: #161729">
                    <div class="label">
                        <a href="Default.aspx">Anasayfa</a>
                        <a href="BiletAl.aspx">Bilet al</a>
                        <a href="Hakkimizda.aspx">Hakkımızda</a>
                        <a href="Galeri.aspx">Galeri</a>
                        <a href="iletisim.aspx">İletişim</a>
                    </div>
                    <div class="text-footer">
                        <a href="#">©2021 Do Turizm - Her Hakkı Saklıdır.</a>
                    </div>
                </div>
            </div>
        </footer>


        <div class="massage">
            <div class="message-box">
                <p>Mesaj Gönder</p>
            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


        <script>
            $('.header-icon').click(function () {

                $('.content-links').toggleClass("responsive");
                return false;
            });

        </script>




    </form>




</body>

</html>
