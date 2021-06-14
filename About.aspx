<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Restaurant003.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        Gioi thieu
    </title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
 
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <link href="StyleSheet1.css" rel="stylesheet" />
    <!-- Site Icons -->
    <link rel="shortcut icon" href="images2/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="images2/apple-touch-icon.png"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>    
	<!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css"/>    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css"/>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Start header -->
        <header class="top-navbar">
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="position: static">
                <div class="container">
                    <a class="navbar-brand" href="index.html">
                        Hoai Thu's restaurant
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbars-rs-food">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item active"><a class="nav-link" href="Home.aspx">Trang chủ</a></li>
                            <li class="nav-item"><a class="nav-link" href="Menu.aspx">Thực đơn</a></li>
                            <li class="nav-item"><a class="nav-link" href="About.aspx">Giới thiệu</a></li>
                            <li class="nav-item"><a class="nav-link" href="DatBan.aspx">Đặt bàn</a></li>
                            <li class="nav-item"><a class="nav-link" href="ContactClients.aspx">Liên hệ</a></li>
                            <li class="nav-item d-flex">
                                <a class="nav-link" href="Cart.aspx">Giỏ hàng</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="dropdown-a" data-toggle="dropdown">
                                    <asp:Label ID="username" runat="server"/>
                                    </a>
                                <div class="dropdown-menu" aria-labelledby="dropdown-a">
                                    <asp:Button ID="btndx" runat="server" Text="Đăng xuất" PostBackUrl="#" CssClass="btn btn-warning" OnClick="logout"/>
                                    <asp:Button ID="btndn" runat="server" Text="Đăng nhập" PostBackUrl="~/DangNhap.aspx" CssClass="btn btn-warning"/>
                                    <asp:Button ID="btndk" runat="server" Text="Đăng ký"  PostBackUrl="~/DangKyClient.aspx" CssClass="btn btn-warning"/>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End header -->

        <!-- Start header -->
        <div class="all-page-title page-breadcrumb">
            <div class="container text-center">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>About Us</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- End header -->

        <!-- Start About -->
        <div class="about-section-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 text-center">
                        <div class="inner-column">
                            <h1>Chào bạn: <span>Hoài Thu's Restaurant</span></h1>
                            <h4>Tạ Quang trung</h4>
                            <p>Không xa hoa, không cầu kì trong cách làm, món vịt khìa nước dừa khoác lên mình một chiếc áo đơn sơ, mộc mạc của người dân miền Tây hiền lành, chân chất. </p>
                            <p>Cá hồi là món ăn phổ biến không chỉ ở nước ngoài mà còn được người Việt yêu thích. Bạn hãy thử làm cá hồi muối cho bữa cơm gia đình nhé.</p>
                            <a class="btn btn-lg btn-circle btn-outline-new-white" href="#">Nấu miến với tiết và đậu phụ
</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <img src="images/about-img.jpg" alt="" class="img-fluid">
                    </div>
                    <div class="col-md-12">
                        <div class="inner-pt">
                            <p>Không xa hoa, không cầu kì trong cách làm, món vịt khìa nước dừa khoác lên mình một chiếc áo đơn sơ, mộc mạc của người dân miền Tây hiền lành, chân chất. </p>
                            <p>Cá hồi là món ăn phổ biến không chỉ ở nước ngoài mà còn được người Việt yêu thích. Bạn hãy thử làm cá hồi muối cho bữa cơm gia đình nhé.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End About -->

        <!-- Start Menu -->
        <div class="menu-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading-title text-center">
                            <h2>Bánh burger dát vàng 24K
</h2>
                            <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia với mức giá 59 USD.</p>
                        </div>
                    </div>
                </div>

                <div class="row inner-menu-box">
                    <div class="col-3">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">tất cả</a>
                            <a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Đồ uống</a>
                            <a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Ăn</</a>
                            <a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Nước</a>
                        </div>
                    </div>

                    <div class="col-9">
                        <div class="tab-content" id="v-pills-tabContent">
                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-01.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-02.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-03.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-04.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-05.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-06.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-07.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-08.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-09.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-01.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-02.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid drinks">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-03.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-04.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-05.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid lunch">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-06.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-07.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-08.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-4 col-md-6 special-grid dinner">
                                        <div class="gallery-single fix">
                                            <img src="images2/img-09.jpg" class="img-fluid" alt="Image">
                                            <div class="why-text">
                                                 <h4>Đồ uống 1</h4>
                                                <p>Chiếc bánh burger dát vàng này được bán ra tại một nhà hàng ở Colombia .</p>
                                                <h5>120.000</h5>
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
        <!-- End Menu -->

         <!-- Start Contact info -->
        <div class="contact-imfo-box">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 arrow-right">
                        <i class="fa fa-volume-control-phone"></i>
                        <div class="overflow-hidden">
                            <h4>Điện thoại</h4>
                            <p class="lead">
                                +01 123-456-4590
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4 arrow-right">
                        <i class="fa fa-envelope"></i>
                        <div class="overflow-hidden">
                            <h4>Email</h4>
                            <p class="lead">
                                yourmail@gmail.com
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <i class="fa fa-map-marker"></i>
                        <div class="overflow-hidden">
                            <h4>Địa chỉ</h4>
                            <p class="lead">
                                237 Cầu Diễn, Cầu Giấy, Hà Nội
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact info -->

        <!-- Start Footer -->
        <footer class="footer-area bg-f">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <h3>Hoài Thu's restasurant</h3>
                        <p>Cơm cùng các món mặn phong phú từ cá, thịt hèo, thịt bò, gà, mực và các loại rau thanh mát.</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Chia sẻ</h3>
                        <div class="subscribe_form">
                            <div class="subscribe_form">
                                <input name="EMAIL" id="subs-email" class="form_input" placeholder="Email của bạn..." type="email">
                                <button type="submit" class="submit">CHIA SẺ</button>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <ul class="list-inline f-social">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Thông tin liên lạc</h3>
                        <p class="lead"> 237 Cầu Diễn, Cầu Giấy, Hà Nội</p>
                        <p class="lead"><a href="#">+84969690069</a></p>
                        <p><a href="#">info@admin.com</a></p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3>Thời gian hoạt động</h3>
                        <p><span class="text-color">Thứ 2: </span>Đóng cửa</p>
                        <p><span class="text-color">Thứ 3- Thứ 4 :</span> 9:00 - 22:00</p>
                        <p><span class="text-color">Thứ 5-Thứ 6 :</span> 9:00 - 21:00</p>
                        <p><span class="text-color">Thứ 7-Chủ Nhật :</span> 17:00 - 22:00</p>
                    </div>
                </div>
            </div>

            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <p class="company-name">
                                Nhóm 16. &copy; 2020 <a href="#">Hoài Thu's Restaurant</a> Design By : 
					<a href="https://html.design/">CNTT4</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>

        </footer>
        <!-- End Footer -->

        <a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>
    </form>
    <!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>
