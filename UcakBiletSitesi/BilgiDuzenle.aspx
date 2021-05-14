<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BilgiDuzenle.aspx.cs" Inherits="BilgiDuzenle" %>

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


        </div>

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
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 13rem;">
                            <asp:Button ID="Bilgilerim" runat="server" Text="BİLGİLERİM" Height="87px" Width="356px" OnClick="Bilgilerim_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 1rem;">
                            <asp:Button ID="Biletler" runat="server" Text="SATIN ALDIĞIM BİLETLER" Height="87px" Width="356px" OnClick="Biletlerim_Click" />
                        </div>
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 1rem;">
                            <asp:Button ID="Biletal" runat="server" Text="BİLET AL" Height="87px" Width="356px" OnClick="BiletSatinAl_Click" />
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
                        <div class="konteynir" style="margin-left: 5rem; margin-top: 5rem;">
                            <h1><b class="" style="color: white;">BİLGİLERİNİZ</b></h1>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label7" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Müşteri numaranız: &nbsp;"></asp:Label><asp:Label ID="lblmusteriNo" Font-Size="20pt" ForeColor="#999999" runat="server" Text="asd"></asp:Label>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label8" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Adınız:&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;"></asp:Label><asp:Label ID="lblmusteriAd" Font-Size="20pt" ForeColor="#999999" runat="server" Text="sad"></asp:Label>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label1" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Soyadınız: &nbsp;&emsp;&emsp;&emsp;&emsp;"></asp:Label><asp:Label ID="lblmusteriSoyad" Font-Size="20pt" ForeColor="#999999" runat="server" Text="sada"></asp:Label>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label2" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Mail adresiniz:&emsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label3" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Şifreniz:&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtSifre" type="password" runat="server"></asp:TextBox>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label5" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Şifreniz tekrar:&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtSifreTekrar" type="password" runat="server"></asp:TextBox>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label4" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Kurtarma kodunuz:&emsp;"></asp:Label><asp:Label ID="lblkurtarmaKodu" Font-Size="20pt" ForeColor="#999999" runat="server" Text="sada"></asp:Label>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir" style="margin-left:10rem; margin-top:3rem;">
                                <asp:Button ID="BilgiGuncelle" runat="server" Height="67px" Width="256px" Text="Bilgilerimi Güncelle" OnClick="BilgiGuncelle_Click" />
                            </div>
                            &nbsp;<br />
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="lblMesaj" Font-Size="20pt" ForeColor="#999999" runat="server" Text="*** Lütfen kurtarma kodunuzu kaydediniz.***"></asp:Label>
                            </div>
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
