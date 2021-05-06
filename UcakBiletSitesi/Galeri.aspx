<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Galeri.aspx.cs" Inherits="Galeri" %>

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
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="kart">
                            <div class="konteynir">
                                <asp:Label ID="lblsehir1" runat="server" Text="Label" Font-Bold="True" Font-Size="25pt" ForeColor="White"></asp:Label>
                            </div>
                            <div class="konteynir">
                                <asp:Label ID="lblhakkinda1" runat="server" Text="123" Font-Size="15pt" ForeColor="#999999"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ist1.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ist2.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ist3.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
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
                    <div class="col-md-3">
                        <div class="kart">
                            <div class="konteynir">
                                <asp:Label ID="lblsehir2" runat="server" Text="Label" Font-Bold="True" Font-Size="25pt" ForeColor="White"></asp:Label>
                            </div>
                            <div class="konteynir">
                                <asp:Label ID="lblhakkinda2" runat="server" Text="asdasd" Font-Size="15pt" ForeColor="#999999"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ank1.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ank2.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/ank3.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
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
                    <div class="col-md-3">
                        <div class="kart">
                            <div class="konteynir">
                                <asp:Label ID="lblsehir3" runat="server" Text="Label" Font-Bold="True" Font-Size="25pt" ForeColor="White"></asp:Label>
                            </div>
                            <div class="konteynir">
                                <asp:Label ID="lblhakkinda3" runat="server" Text="asdasd" Font-Size="15pt" ForeColor="#999999"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/izm1.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/izm2.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/izm3.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
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
                    <div class="col-md-3">
                        <div class="kart">
                            <div class="konteynir">
                                <asp:Label ID="lblsehir4" runat="server" Text="Label" Font-Bold="True" Font-Size="25pt" ForeColor="White"></asp:Label>
                            </div>
                            <div class="konteynir">
                                <asp:Label ID="lblhakkinda4" runat="server" Text="asdasd" Font-Size="15pt" ForeColor="#999999"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/adana1.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/adana2.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="kart">
                            <img src="imgsehirler/adana3.jpg" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="" style="background-color: #2B2A30">
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


