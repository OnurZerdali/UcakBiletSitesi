<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SifreUnuttum.aspx.cs" Inherits="SifreUnuttum" %>

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
            background-color: #F0F0F0;
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
                    <div class="col-md-12">
                        <div class="" style="margin-left:35rem; margin-top:8rem;">
                            <div class="konteynir">
                                <h1><b class="" style="color: white">ŞİFRE SIFIRLA</b></h1>
                            </div>
                            &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label1" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Mail Adresiniz:&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="DenenenMail" runat="server"></asp:TextBox>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label2" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Kurtarma Kodunuz:&emsp;"></asp:Label><asp:TextBox ID="Kurtarmakod" runat="server"></asp:TextBox>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label4" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Yeni Şifreniz:&nbsp;&nbsp;&nbsp;&emsp;&emsp;&emsp;"></asp:Label><asp:TextBox placeholder="******" ID="YeniSifre" type="password" runat="server"></asp:TextBox>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label6" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Yeni Şifreniz tekrar:&emsp;"></asp:Label><asp:TextBox placeholder="******" ID="YeniSifreTekrar" type="password" runat="server"></asp:TextBox>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="Label5" Font-Size="10pt" ForeColor="#999999" runat="server" Text="Tüm alanlar doldurulmak zorundadır."></asp:Label>
                            </div>
                            <div class="konteynir" style="margin-left: 1rem; margin-top: 1rem;">
                                <asp:Button ID="SiteyeGeriDon" runat="server" Text="Giriş Sayfasına geri dön !" Height="48px" Width="235px" OnClick="SiteyeGit_Click"/> <asp:Button ID="SifreSifirla" runat="server" Text="Şifremi Sıfırla !" Height="48px" Width="235px" OnClick="SifreSifirla_Click"/>
                            </div>
                             &nbsp;<br />
                            <div class="konteynir">
                                <asp:Label ID="lblMesaj" style="margin-left: 5rem; margin-top: 1rem;" Font-Size="20pt" ForeColor="#999999" runat="server" Text=""></asp:Label>
                                &nbsp;<br />
                                <asp:Button ID="SiteyeGit" style="margin-left: 5rem; margin-top: 1rem;" runat="server" Text="Giriş sayfasına git !" Height="48px" Width="235px" OnClick="SiteyeGit_Click"/>
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
