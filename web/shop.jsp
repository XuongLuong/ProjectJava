<%-- 
    Document   : shop
    Created on : Apr 30, 2022, 11:00:34 AM
    Author     : Admin
--%>


<%@page import="products.ProductDTO"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cửa hàng di động NLX </title>
        <link rel="stylesheet" href="css/trangchu.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    </head>
    <%
        List<ProductDTO> listProduct = (List<ProductDTO>) request.getAttribute("listP");
    %>
    <header style="height: 70px;">
        <div style="float: left; height: 77%; width: 100%; background: white">
            <img src="img/hinh1.jpg" style="width: 100%; height:130%;">          
        </div>
    </header> 
    <a href="HomeControl">a</a>
    <nav>
        <div class="container"> 
            <ul>
                <li><a href="" ><img style="width: 170px; height:60px;" src="img/logo-iphone.jpg"></a></li>
                <li><input type="text"><i class="fa-thin fa-magnifying-glass"></i></li>
                <li><a href=""></a><button>TP.HCM</button></li>
                <li><a href=""></a><button>GIỎ HÀNG</button></li>
                <li><a href=""></a><button>GIỚI THIỆU</button></li>
                <li><a href=""></a><button>TƯ VẤN</button></a></li>
                <li><a href="DangKy.html"><button>ĐĂNG KÝ</button></a></li>
                <li><a href="DangNhap.html"><button>ĐĂNG NHẬP</button></a></li>                                           
            </ul>
        </div>
    </nav>


    <section class="MENU">
        <div class="container">
            <div class="MENU-CON">
                <ul>
                    <li><a href="DienThoai.html"><button><i class="fa fa-mobile"></i>IPHONE</button></a></li>
                    <li><a href="MacBook.html"><button><i class="fa fa-laptop"></i>MACBOOK</button></a></li>
                    <li><a href=""><button><i class=""></i>PHỤ KIỆN</button></a>
                        <div class="menuPhuKien">
                            <ul>
                                <li><a href="">Loa</a></li>
                                <li><a href="">Tai Nghe</a></li>
                                <li><a href="">Chuột máy tính</a></li>
                                <li><a href="">Ốp lưng</a></li>
                                <li><a href="">Bàn phím</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="Tablet.html"><button><i class="fa fa-tablet"></i>IPAD</button></a></li>
                    <li><a href="AppleWatch.html"><button><i class="fa fa-clock-o"></i>APPLE WATCH</button></a></li>
                </ul>

            </div>
        </div>
    </section>

    <!-----------------------------------introduce------------------------------------>
    <section class="introduce">
        <div class="chuadung">
            <div class="introduce-noidung">
                <div class="introduce-noidung-left">
                    <div class="introduce-noidung-left-top">
                        <div class="introduce-noidung-left-top-list">
                            <a href=""><img src="img/logotrangchu.png" alt=""></a>
                            <a href=""><img src="img/Layout_VnExpress.png" alt=""></a>
                            <a href=""><img src="img/thumnails.png" alt=""></a>
                            <a href=""><img src="img/thumnails.png" alt=""></a>
                            <a href=""><img src="img/thumnails.png" alt=""></a>
                        </div>
                        <div class="introduce-noidung-left-top-btn">
                            <i class="fa-solid fa-left"></i>
                            <i class="fa-solid fa-right"></i>
                        </div>

                    </div>  
                    <div class="introduce-noidung-left-bottom">
                        <li class="active" style="margin-left:170px" style="">SẢN PHẨM NỔI BẬT, ƯU ĐÃI LỚN, KHUYẾN MÃI SẬP SÀN</li>  
                    </div>
                </div>
                <div class="introduce-noidung-right">
                    <li><a href=""><img src="img/noidung-right1.jpg"></a></li>
                    <li><a href=""><img src="img/noidung-right2.jpg"></a></li>
                    <li><a href=""><img src="img/noidung-right3.jpg"></a></li>
                    <li><a href=""><img src="img/noidung-right4.jpg"></a></li>
                </div>
            </div>
        </div>
    </section>

    <header>
        <h1>THẾ GIỚI APPLE</h1>
    </header>

    <section2>
        <div class="products">
            <div class="product">
                <img src="img/iphone 12 64g.jpg" alt="phone"/> 
                <div class="info">
                    <h3>Iphone 12</h3>
                    <h4>16.690.000<sup>đ</sup></h4>
                </div>                       
            </div>          
        </div>

        <%
            if (listProduct != null) {
                if (!listProduct.isEmpty()) {
                    for (ProductDTO product : listProduct) {
        %>
        <div class="products">
            <div class="product">
                <img src="<%= product.getHINHANH_SP()%>" alt="phone"/> 
                <div class="info">
                    <h3><%= product.getTEN_SP()%></h3>
                    <h4><%= product.getGIABAN()%><sup>đ</sup></h4>
                </div>             
            </div>  

        </div>                
        <%
                    }
                }
            }
        %>

    </section2>


    <section3>
        <div>
            <h1 class="subject"><i class="fa fa-laptop"></i> MacBook</h1>
            <div class="line"></div>
        </div>
        <div class="products">
            <div class="product">
                <img src="img/MacBook Pro 2018.jpg" alt="MacBook"/> 
                <div class="info">
                    <h3>MacBook Pro 2018</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>                  
        </div>
    </section3>

    <section4>
        <div>
            <h1 class="subject"><i class="fa fa-tablet"></i> Tablet</h1>
            <div class="line"></div>
        </div>
        <div class="products">
            <div class="product">
                <img src="img/Ipad Pro M1.jpg" alt="Tablet"/> 
                <div class="info">
                    <h3>Ipad Pro M1</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Ipad pro (2021).jpg" alt="Tablet"/> 
                <div class="info">
                    <h3>Ipad pro(2021)</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Ipad Mini 6 (2021).jpg" alt="Tablet"/> 
                <div class="info">
                    <h3>Ipad Mini 6(2021)</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Ipad 9.jpg" alt="Tablet"/> 
                <div class="info">
                    <h3>Ipad 9</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
        </div>
    </section4>

    <section5>
        <div>
            <h1 class="subject"><i class="fa-regular fa-watch-apple"></i> Apple Watch</h1>
            <div class="line"></div>
        </div>

        <div class="products">
            <div class="product">
                <img src="img/Apple Watch SE (4G) 44mm - Viền nhôm dây vải.jpg" alt="AppleWatch"/> 
                <div class="info">
                    <h3>Apple Watch SE(4G) 44mm - Viền nhôm dây vải</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Apple Watch SE GPS + Cellular, 44mm.jpg" alt="AppleWatch"/> 
                <div class="info">
                    <h3>Apple Watch SE GPS + Cellular, 44mm</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Apple Watch Series 6 (4G) 40mm - Viền thép dây thép.jpg" alt="AppleWatch"/> 
                <div class="info">
                    <h3>Apple Watch Series 6 (4G) 40mm - Viền thép dây thép</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Apple Watch Series 6 GPS, 44mm.jpg" alt="AppleWatch"/> 
                <div class="info">
                    <h3>Apple Watch Series 6 GPS, 44mm</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
        </div>
        <div class="line"></div>
    </section5>

    <section6>
        <div>
            <h1 class="subject"><i class="fa fa-keyboard-o"></i> Phụ Kiện</h1>
            <div class="line"></div>
        </div>
        <div class="products">
            <div class="product">
                <img src="img/Bàn phím Apple Magic Keyboard.jpg" alt="Bàn phím" /> 
                <div class="info">
                    <h3>Bàn phím Apple Magic Keyboard</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Tai nghe AirPods Max Sky Blue.jpg" alt="Tai nghe"/> 
                <div class="info">
                    <h3>Tai nghe AirPods Max Sky Blue</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Tai nghe Bluetooth Apple Airpod 3.jpg" alt="Tai nghe"/> 
                <div class="info">
                    <h3>Tai nghe Bluetooth Apple Airpod 3</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
            <div class="product">
                <img src="img/Sạc Apple 30W.jpg" alt="Cục sạc"/> 
                <div class="info">
                    <h3>Sạc Apple 30w</h3>
                    <h4>29.000.000 VND</h4>
                </div>
            </div>
        </div>
    </section6>



    <footer>
        <ul>
            <li>Tên shop: Cửa hàng Apple NLX </li>
            <li>Địa chỉ: 96/46 Đào Tông Nguyên Ấp 4 Xã Phú Xuân Huyện Nhà Bè </li> 
            <li>Hotline: 0358406972</li> 
        </ul>
    </footer>
</body>    
</html>
