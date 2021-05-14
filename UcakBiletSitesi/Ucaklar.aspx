<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ucaklar.aspx.cs" Inherits="Ucaklar" %>

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

        &nbsp;<br />

        <div class="content-links responsive">
            <a href="#" class="header-icon">
                <i class="fas fa-bars"></i>
            </a>

            <div class="display" style="background-color: #2B2A30">

                <b><a href="Uye.aspx" class="" style="color: white">TÜM ÜYELER</a></b>
                <b><a href="Ucuslar.aspx" class="" style="color: white">UÇUŞLAR</a></b>
                <b><a href="Ucaklar.aspx" class="" style="color: white">UÇAKLAR</a></b>
                <b><a href="BiletAl.aspx" class="" style="color: white">ÇIKIŞ YAP</a></b>
            </div>
        </div>

        <div class="content-links responsive" style="background-color: #2B2A30">
            <h1 style="color:white">UÇAK LİSTESİ</h1>
        </div>
        &nbsp;<br />
        <div class="" style="background-color: #fff">
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>

        </div>

        <div>
            <h1>
                <asp:Label ID="Label1" style="margin-left:40rem; color:white;" runat="server" Text="Uçak numarası giriniz :&nbsp;"></asp:Label><asp:TextBox ID="txtUcakNo" runat="server" Width="90px"></asp:TextBox>
            </h1>
        </div>
        <div class="content-links responsive">
            <h1>
                <asp:Button ID="ucussil" runat="server" Text="Uçağı sil" OnClick="ucaksil_Click" />
                <asp:Button ID="ucusguncelle" runat="server" Text="Uçağı güncelle" OnClick="ucakguncelle_Click" />
                <asp:Button ID="ucusekle" runat="server" Text="Uçak ekle" OnClick="ucakekle_Click" />
            </h1>
        </div>
        <div class="content-links responsive">
            <h2>
                <asp:Label ID="lblmesaj" style="color:white" runat="server" Text=""></asp:Label>
            </h2>
        </div>
        &nbsp;<br />
        &nbsp;<br />
        &nbsp;<br />

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
