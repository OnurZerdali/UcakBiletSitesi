<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


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
        .auto-style1 {
            margin-bottom: 0;
            margin-left: 150;
        }
    </style>

</head>

<body>

    <form id="form1" runat="server">
        <header>
            <div class="section">
                <div class="content-title">
                    <div class="left-top" style="background-color: #2B2A30">
                        <a href="#"><i class="fas fa-share-alt"></i></a>
                        <a href="#">SOSYAL MEDYADA BİZ</a>
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                    <div class="right-top" style="background-color: #2B2A30">
                        <a href="#"><i class="far fa-user"></i></a>
                        <a href="">BİZİMLE İLETİŞİME GEÇ</a>
                        <a href="">|</a>
                        <a href="">0123 456 78 90</a>
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

                <div class="display">

                    <b><a href="#" class="" style="color: black">ANASAYFA</a></b>
                    <b><a href="#" class="" style="color: black">BİLET AL</a></b>
                    <b><a href="#" class="" style="color: black">GALERİ</a></b>
                    <b><a href="#" class="" style="color: black">HAKKIMIZDA</a></b>
                    <b><a href="#" class="" style="color: black">İLETİŞİM</a></b>

                </div>
            </div>
        </div>

        <div class="background">
            <div class="container">
                <div class="header-box">
                    <div class="" style="margin-top:15rem;">                   
                       <h1><b style="color: white; margin-left:60rem;" >Kaliteli ve güvenli uçuşun tek adresi Do Turizm...</b></h1>
                        <h1><b style="color: white; margin-left:60rem;" >
                        <asp:Button ID="Button1" runat="server" Text="Hemen tıkla ve bilet al." BackColor="#55463F" BorderStyle="Solid" CssClass="auto-style1" Font-Bold="True" Font-Italic="True" Font-Size="50px" Height="107px" OnClick="Button1_Click" Width="623px" />
                            </b></h1>
                    </div>
                </div>

               <%--<div class="img-box">
                    <img src="img/logo2.png" alt="">
                </div>--%>

            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="kart">
                        <img src="img/ucusiptall.jpg" alt="Avatar" style="width: 100%">
                        <div class="konteynir">
                            <h4><b><a href="#" style="color: black">05.05.2021 19:00 tarihli İstanbul-Ankara uçuşu hava şartları nedeniyle iptal edildi</a></b></h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="kart">
                        <img src="img/guncellendiduyuru.jpg" alt="Avatar" style="width: 100%">
                        <div class="konteynir">
                            <h4 class="text-center mt-3"><b>Uçuşlarımız güncellendi</b></h4>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="kart">
                        <img src="img/ucuskuralları.jpg" alt="Avatar" style="width: 100%">
                        <div class="konteynir">
                            <h4><b><a>Uçuş kuralları hakkında</a></b></h4>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <div class="view">
            <div class="content-view">
                <div class="content-number-box" style="color: #ffffff">
                    <div class="number-box">
                        <p class=""> <img src="img/ucak3.png" alt="" style="width: 50px"></p>
                        <asp:Label ID="lblucak" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">UÇAK</p>
                    </div>

                    <div class="number-box">
                        <p class=""> <img src="img/basariliucus.png" alt="" style="width: 50px"></p>
                        <asp:Label ID="lblucus" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">UÇUŞ SAYISI</p>
                    </div>

                    <div class="number-box" style="color: #ffffff">
                        <p class=""> <img src="img/koltuk.png" alt="" style="width: 50px"></p>
                        <asp:Label ID="lblkapasite" runat="server" Text="" Font-Size="25pt"></asp:Label>
                        <p class="textt">YOLCU KAPASİTESİ</p>
                    </div>

                    <div class="number-box" style="color: #ffffff">
                        <p class=""> <img src="img/mutlumusteri.png" alt="" style="width: 50px"></p>
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
                <button class="button-contact">BİLET AL</button>
                <button class="button-contact">İLETİŞİME GEÇ</button>
            </div>
        </div>



        <footer>
            <div class="footer">
                <div class="content-footer" style="background-color: #161729">
                    <div class="label">
                        <a href="#">Anasayfa</a>
                        <a href="#">Bilet al</a>
                        <a href="#">Hakkımızda</a>
                        <a href="#">Galeri</a>
                        <a href="#">İletişim</a>
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
