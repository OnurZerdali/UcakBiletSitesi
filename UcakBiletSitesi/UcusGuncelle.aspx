<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UcusGuncelle.aspx.cs" Inherits="UcusGuncelle" %>

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
            <h1 style="color: white">UÇUŞ GÜNCELLE</h1>
        </div>
        <div class="container" style="margin-left:45rem;">
            <div class="row">
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label4" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Uçuş numarası: &nbsp;"></asp:Label><asp:Label ID="lblucusNo" Font-Size="20pt" ForeColor="#999999" runat="server"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label7" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Uçak numarası: &nbsp;"></asp:Label><asp:Label ID="lblucakNo" Font-Size="20pt" ForeColor="#999999" runat="server"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label8" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Nereden:&nbsp;&nbsp;&emsp;&emsp;&emsp;"></asp:Label><asp:Label ID="lblNereden" Font-Size="20pt" ForeColor="#999999" runat="server"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label1" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Nereye: &emsp;&emsp;&emsp;&emsp;"></asp:Label><asp:Label ID="lblNereye" Font-Size="20pt" ForeColor="#999999" runat="server"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label2" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Uçuş tarihi:&nbsp;&nbsp;&nbsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtTarih" runat="server"></asp:TextBox> <asp:Label ID="Label6" style="color:white;" runat="server" Text="(gg/aa/yyyy)"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label3" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Uçuş saati:&emsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtSaat" runat="server"> </asp:TextBox><asp:Label ID="Label10" style="color:white;" runat="server" Text="(ss:dd)"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label9" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Tahmini varış:&nbsp;&nbsp;&nbsp;&emsp;"></asp:Label><asp:TextBox ID="txtTahminiVaris" runat="server"></asp:TextBox>
                </div>
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="Label5" Font-Size="20pt" ForeColor="#999999" runat="server" Text="Uçuş fiyatı:&nbsp;&nbsp;&nbsp;&nbsp;&emsp;&emsp;"></asp:Label><asp:TextBox ID="txtFiyat" runat="server"></asp:TextBox><asp:Label ID="Label11" style="color:white;" runat="server" Text="(TL)"></asp:Label>
                </div>
                &nbsp;<br />
                <div class="konteynir" style="margin-left: 8rem; margin-top: 3rem;">
                    <asp:Button ID="Guncelle" runat="server" Text="Uçuş Güncelle" OnClick="Guncelle_Click" Height="67px" Width="256px" />
                </div>
                &nbsp;<br />
                &nbsp;<br />
                <div class="konteynir">
                    <asp:Label ID="lblMesaj" Font-Size="20pt" ForeColor="#999999" runat="server" Text=""></asp:Label>
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
