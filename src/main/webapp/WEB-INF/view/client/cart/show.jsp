<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <!-- Required meta tags -->
                    <meta charset="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <link rel="icon" href="img/favicon.png" type="image/png" />
                    <title>Eiser ecommerce</title>
                    <!-- Bootstrap CSS -->
                    <link rel="stylesheet" href="css/bootstrap.css" />
                    <link rel="stylesheet" href="vendors/linericon/style.css" />
                    <link rel="stylesheet" href="css/font-awesome.min.css" />
                    <link rel="stylesheet" href="css/themify-icons.css" />
                    <link rel="stylesheet" href="vendors/owl-carousel/owl.carousel.min.css" />
                    <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css" />
                    <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css" />
                    <link rel="stylesheet" href="vendors/animate-css/animate.css" />
                    <link rel="stylesheet" href="vendors/jquery-ui/jquery-ui.css" />
                    <!-- main css -->
                    <link rel="stylesheet" href="css/style.css" />
                    <link rel="stylesheet" href="css/responsive.css" />
                    <link rel="stylesheet" href="css/style1.css" />
                </head>

                <body>
                    <!--================Header Menu Area =================-->
                    <jsp:include page="../layout/header.jsp" />
                    <!--================Header Menu Area =================-->

                    <!--================Home Banner Area =================-->
                    <section class="banner_area">
                        <div class="banner_inner d-flex align-items-center">
                            <div class="container">
                                <div class="banner_content d-md-flex justify-content-between align-items-center">
                                    <div class="mb-3 mb-md-0">
                                        <h2>Cart</h2>
                                        <p>Very us move be blessed multiply night</p>
                                    </div>
                                    <div class="page_link">
                                        <a href="/">Home</a>
                                        <a href="cart.html">Cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--================End Home Banner Area =================-->

                    <!--================Cart Area =================-->
                    <section class="cart_area">
                        <div class="container">
                            <div class="cart_inner">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Sản phẩm</th>
                                                <th scope="col">Giá</th>
                                                <th scope="col">Số lượng</th>
                                                <th scope="col">Tổng tiền</th>
                                                <th scope="col"></th>
                                                <th scope="col">Thao tác</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${lstCartDetail}" var="cartDetail">
                                                <tr>
                                                    <td>
                                                        <div class="media">
                                                            <div class="d-flex">
                                                                <img style="height: 98px; width: 106px; border: none;"
                                                                    src="images/product/${cartDetail.product.image}"
                                                                    alt="" />
                                                            </div>
                                                            <div class="media-body">
                                                                <p>${cartDetail.product.name}</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <h5>
                                                            <fmt:formatNumber type="number"
                                                                value="${cartDetail.product.price}" />
                                                            đ
                                                        </h5>
                                                    </td>
                                                    <td>
                                                        <div class="product_count">
                                                            <input type="text" name="qty" id="sst" maxlength="12"
                                                                value="${cartDetail.quantity}" title="Quantity:"
                                                                class="input-text qty" />
                                                            <button class="increase items-count" type="button">
                                                                <i class="lnr lnr-chevron-up"></i>
                                                            </button>
                                                            <button class="reduced items-count" type="button">
                                                                <i class="lnr lnr-chevron-down"></i>
                                                            </button>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <h5>$720.00</h5>
                                                    </td>
                                                    <td>
                                                    </td>
                                                    <td>
                                                        <div>
                                                            <a href="/remove-product-from-cart/${cartDetail.product.id}"
                                                                style="display: block; text-align: center; color: #71cd14;">Xóa</a>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </c:forEach>

                                            <tr class="bottom_button">
                                                <td>
                                                    <a class="gray_btn" href="#">Update Cart</a>
                                                </td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <div class="cupon_text">
                                                        <input type="text" placeholder="Coupon Code" />
                                                        <a class="main_btn" href="#">Apply</a>
                                                        <a class="gray_btn" href="#">Close Coupon</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <h5>Subtotal</h5>
                                                </td>
                                                <td>
                                                    <h5>$2160.00</h5>
                                                </td>
                                            </tr>
                                            <tr class="shipping_area">
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <h5>Shipping</h5>
                                                </td>
                                                <td>
                                                    <div class="shipping_box">
                                                        <ul class="list">
                                                            <li>
                                                                <a href="#">Flat Rate: $5.00</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Free Shipping</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Flat Rate: $10.00</a>
                                                            </li>
                                                            <li class="active">
                                                                <a href="#">Local Delivery: $2.00</a>
                                                            </li>
                                                        </ul>
                                                        <h6>
                                                            Calculate Shipping
                                                            <i class="fa fa-caret-down" aria-hidden="true"></i>
                                                        </h6>
                                                        <select class="shipping_select">
                                                            <option value="1">Bangladesh</option>
                                                            <option value="2">India</option>
                                                            <option value="4">Pakistan</option>
                                                        </select>
                                                        <select class="shipping_select">
                                                            <option value="1">Select a State</option>
                                                            <option value="2">Select a State</option>
                                                            <option value="4">Select a State</option>
                                                        </select>
                                                        <input type="text" placeholder="Postcode/Zipcode" />
                                                        <a class="gray_btn" href="#">Update Details</a>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr class="out_button_area">
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td>
                                                    <div class="checkout_btn_inner">
                                                        <a class="gray_btn" href="#">Continue Shopping</a>
                                                        <a class="main_btn" href="#">Proceed to checkout</a>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!--================End Cart Area =================-->

                    <!--================ start footer Area  =================-->
                    <jsp:include page="../layout/footer.jsp" />
                    <!--================ End footer Area  =================-->

                    <!-- Optional JavaScript -->
                    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
                    <script src="js/jquery-3.2.1.min.js"></script>
                    <script src="js/popper.js"></script>
                    <script src="js/bootstrap.min.js"></script>
                    <script src="js/stellar.js"></script>
                    <script src="vendors/lightbox/simpleLightbox.min.js"></script>
                    <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
                    <script src="vendors/isotope/imagesloaded.pkgd.min.js"></script>
                    <script src="vendors/isotope/isotope-min.js"></script>
                    <script src="vendors/owl-carousel/owl.carousel.min.js"></script>
                    <script src="js/jquery.ajaxchimp.min.js"></script>
                    <script src="js/mail-script.js"></script>
                    <script src="vendors/jquery-ui/jquery-ui.js"></script>
                    <script src="vendors/counter-up/jquery.waypoints.min.js"></script>
                    <script src="vendors/counter-up/jquery.counterup.js"></script>
                    <script src="js/theme.js"></script>
                </body>

                </html>