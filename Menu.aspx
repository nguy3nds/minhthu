<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Restaurant003.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        Menu
    </title>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<link href="StyleSheet1.css" rel="stylesheet" />
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
    <style>
        #btnTimKiem {
            background: #d65106;
			color: #fff;
        }

    </style>
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
                                    <asp:Button ID="btndk" runat="server" Text="Đăng ký"  PostBackUrl="~/dang.aspx" CssClass="btn btn-warning"/>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- End header -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Thực đơn</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
	
	<!-- Start Menu -->
	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>Thực đơn</h2>
						<p>Thực đơn của nhà hàng vô cùng đa dạng và phong phú</p>
                        <div style="display: flex;">
							<asp:TextBox ID="txtTimKiem" runat="server" CssClass="form-control" 
							placeholder="Nhập trên món ăn"
							/>
						<asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" CssClass="btn" OnClick="btnTimKiem_Click"/>
                        </div>
						
					</div>
				</div>
			</div>
			
			<div class="row inner-menu-box">
				<div class="col-3">
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Tất cả</a>
						<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">Bữa sáng</a>
						<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">Bữa trưa</</a>
						<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">Bữa tối</a>
					</div>
				</div>
				
				<div class="col-9">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
							<div class="row">
								<div style="padding: 10px;">
									<asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
										<ItemTemplate>
											<asp:Image ID="anhMon" runat="server" ImageUrl= '<%# "~/Images/" + Eval("anh")%>' />
											<asp:Label ID="tenMonLbl" runat="server" Text='<%# Eval("tenMon") %>' />
											<asp:Label ID="giaLbl" runat="server" Text='<%#"đ" + Eval("donGia") %>' />
											</br>
											<asp:Button ID="choVaoGio" runat="server" 
												Text="Thêm vào giỏ" 
												CssClass="btn btn-danger p-1" 
												Font-Size="9"
												CommandName="choVaoGio"
												CommandArgument='<%# Bind("maMon") %>'
												OnCommand="ChoVaoGio_Click"
												/>
										</ItemTemplate>
									</asp:DataList>
									<asp:Label ID="message" runat="server" ForeColor="red"/>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/img-01.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $7.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/img-02.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $9.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid drinks">
									<div class="gallery-single fix">
										<img src="images/img-03.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Drinks 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $10.79</h5>
										</div>
									</div>
								</div>
							</div>
							
						</div>
						<div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/img-04.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $15.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/img-05.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $18.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid lunch">
									<div class="gallery-single fix">
										<img src="images/img-06.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Lunch 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $20.79</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
							<div class="row">
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-07.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 1</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $25.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-08.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 2</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $22.79</h5>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-6 special-grid dinner">
									<div class="gallery-single fix">
										<img src="images/img-09.jpg" class="img-fluid" alt="Image">
										<div class="why-text">
											<h4>Special Dinner 3</h4>
											<p>Sed id magna vitae eros sagittis euismod.</p>
											<h5> $24.79</h5>
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
	
	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-center">
					<p class="lead ">
						" Muốn ăn thì lăn vào quán "
					</p>
					<span class="lead">Trần Ngọc Lực</span>
				</div>
			</div>
		</div>
	</div>
	<!-- End QT -->
	
	 <!-- Start Customer Reviews -->
        <div class="customer-reviews-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="heading-title text-center">
                            <h2>Nhận xét khách hàng</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-8 mr-auto ml-auto text-center">
                        <div id="reviews" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner mt-4">
                                <div class="carousel-item text-center active">
                                    <div class="img-box p-1 border rounded-circle m-auto">
                                        <img class="d-block w-100 rounded-circle" src="images2/quotations-button.png" alt="">
                                    </div>
                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Tạ Trung</strong></h5>
                                    <h6 class="text-dark m-0">Lập trình viên</h6>
                                    <p class="m-0 pt-3">Cơm cùng các món mặn phong phú từ cá, thịt hèo, thịt bò, gà, mực và các loại rau thanh mát để bạn thoải mái lựa chọn cho mình các món khoái khẩu. Bữa tiệc còn có sự góp mặt của món bún, mì và canh giúp bạn thay đổi khẩu vị và không thấy nhàm chán khi ăn. Cuối bữa ăn, bạn có thể tráng miệng với chè phục linh, rau câu trái cây hay uống nước sâm rong biển, trà, café…</p>
                                </div>
                                <div class="carousel-item text-center">
                                    <div class="img-box p-1 border rounded-circle m-auto">
                                        <img class="d-block w-100 rounded-circle" src="images2/quotations-button.png" alt="">
                                    </div>
                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Phan Trung</strong></h5>
                                    <h6 class="text-dark m-0">Công nhân</h6>
                                    <p class="m-0 pt-3">Cơm cùng các món mặn phong phú từ cá, thịt hèo, thịt bò, gà, mực và các loại rau thanh mát để bạn thoải mái lựa chọn cho mình các món khoái khẩu. Bữa tiệc còn có sự góp mặt của món bún, mì và canh giúp bạn thay đổi khẩu vị và không thấy nhàm chán khi ăn. Cuối bữa ăn, bạn có thể tráng miệng với chè phục linh, rau câu trái cây hay uống nước sâm rong biển, trà, café…</p>
                                </div>
                                <div class="carousel-item text-center">
                                    <div class="img-box p-1 border rounded-circle m-auto">
                                        <img class="d-block w-100 rounded-circle" src="images2/quotations-button.png" alt="">
                                    </div>
                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Cảnh Nguyên</strong></h5>
                                    <h6 class="text-dark m-0">Cảnh sát</h6>
                                    <p class="m-0 pt-3">Cơm cùng các món mặn phong phú từ cá, thịt hèo, thịt bò, gà, mực và các loại rau thanh mát để bạn thoải mái lựa chọn cho mình các món khoái khẩu. Bữa tiệc còn có sự góp mặt của món bún, mì và canh giúp bạn thay đổi khẩu vị và không thấy nhàm chán khi ăn. Cuối bữa ăn, bạn có thể tráng miệng với chè phục linh, rau câu trái cây hay uống nước sâm rong biển, trà, café…</p>
                                </div>
                                <div class="carousel-item text-center">
                                    <div class="img-box p-1 border rounded-circle m-auto">
                                        <img class="d-block w-100 rounded-circle" src="images2/quotations-button.png" alt="">
                                    </div>
                                    <h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Ngọc Lực</strong></h5>
                                    <h6 class="text-dark m-0">Cảnh sát</h6>
                                    <p class="m-0 pt-3">Cơm cùng các món mặn phong phú từ cá, thịt hèo, thịt bò, gà, mực và các loại rau thanh mát để bạn thoải mái lựa chọn cho mình các món khoái khẩu. Bữa tiệc còn có sự góp mặt của món bún, mì và canh giúp bạn thay đổi khẩu vị và không thấy nhàm chán khi ăn. Cuối bữa ăn, bạn có thể tráng miệng với chè phục linh, rau câu trái cây hay uống nước sâm rong biển, trà, café…</p>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
                                <i class="fa fa-angle-left" aria-hidden="true"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
                                <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Customer Reviews -->

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
