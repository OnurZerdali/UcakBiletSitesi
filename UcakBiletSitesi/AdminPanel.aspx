<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminPanel.aspx.cs" Inherits="AdminPanel" %>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Do Turizm</title>
    <link href="Anasayfa.css" rel="stylesheet" />
    <link href="Slayt.css" rel="stylesheet" />
    <script src="slider.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Shippori+Mincho:wght@500&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <style>
        body {
            background-color: #2B2A30;
        }

        #slider {
            width: 500px;
            height: 300px;
        }
        .auto-style1 {
            width: 135px;
        }
        .auto-style2 {
            width: 159px;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">
        <header>
            <div class="section">
                <div class="content-title">
                    <div class="left-top" style="background-color: #2B2A30">
                        <a href="Default.aspx">ANASAYFAYA DÖN</a>
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


        <div id="slider">
            <a href="#">
                <img src="imgucaklar/ucak1.jpg" alt="Şirketimize ait uçaklardan kareler" /></a>
            <a href="#">
                <img src="imgucaklar/ucak2.jpg" /></a>
            <a href="#">
                <img src="imgucaklar/ucak3.jpg" /></a>
            <a href="#">
                <img src="imgucaklar/ucak4.jpg" /></a>
            <a href="#">
                <img src="imgucaklar/ucak5.jpg" /></a>
        </div>



        <div class="" style="background-color: #2B2A30">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 5rem;">
                            <asp:Button ID="Uyeler" runat="server" Text="ÜYELER" Height="87px" Width="356px" OnClick="Uye_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 1rem;">
                            <asp:Button ID="Ucuslar" runat="server" Text="UÇUŞLAR" Height="87px" Width="356px" OnClick="Ucuslar_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 1rem;">
                            <asp:Button ID="Ucaklar" runat="server" Text="UÇAKLAR" Height="87px" Width="356px" OnClick="Ucaklar_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 1rem;">
                            <asp:Button ID="Cikisyap" runat="server" Text="ÇIKIŞ YAP" Height="87px" Width="356px" OnClick="Cikisyap_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 15rem; margin-top: 5rem;">
                            <h1> <asp:Label ID="lblmail" style="color:#ffffff" runat="server" Text=""></asp:Label> </h1>
                        </div>
                         <div class="konteynir">
                            <h1> <asp:Label ID="musterino" style="color:#ffffff" runat="server" Text=""></asp:Label> </h1>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="konteynir" style="margin-left: 10rem; margin-top: 5rem;">
                            <h1><a style="color:#ffffff">Yönetici paneline hoşgeldiniz</a></h1>
                        </div>
                        <div class="kart">
                            <img src="img/logo.png" alt="Avatar" style="width: 100%">
                        </div>
                    </div>
                </div>
            </div>
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


    <script>
        function tableClick(ucusNo) {
            alert(ucusNo);
        }
    </script>

</body>

</html>
