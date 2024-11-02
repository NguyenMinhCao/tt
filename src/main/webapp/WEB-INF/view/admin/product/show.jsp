<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Dashboard - SB Admin</title>
            <link href="/admin/css/styles.css" rel="stylesheet" />
            <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        </head>

        <body class="sb-nav-fixed">
            <jsp:include page="../layout/header.jsp" />
            <div id="layoutSidenav">
                <jsp:include page="../layout/sidebar.jsp" />

                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Dashboard</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active">
                                    <a href="/admin" style="text-decoration: none;">Dashboard</a> / Product
                                </li>
                            </ol>
                            <div class="container mt-5">
                                <div class="d-flex justify-content-between">
                                    <h3>Table product</h3>
                                    <a href="/admin/product/create" class="btn btn-primary">Create a product</a>
                                </div>
                                <hr>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th scope="col">ID</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Price</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listProducts}" var="product">
                                            <tr>
                                                <th scope="row">${product.id}</th>
                                                <td>${product.name}</td>
                                                <td>${product.price}</td>
                                                <td>${product.quantity}</td>
                                                <td>
                                                    <a href="/admin/product/detail/${product.id}"
                                                        class="btn btn-success">View</a>
                                                    <a href="/admin/product/view-update/${product.id}"
                                                        class="btn btn-warning">Update</a>
                                                    <a href="/admin/product/view-detele/${product.id}"
                                                        class="btn btn-danger">Delete</a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </main>
                    <jsp:include page="../layout/footer.jsp" />
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                crossorigin="anonymous"></script>
            <script src="/admin/js/scripts.js"></script>
        </body>

        </html>