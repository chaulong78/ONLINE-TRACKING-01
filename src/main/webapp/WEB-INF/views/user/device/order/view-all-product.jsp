<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Device Order</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <%-- Header --%>
            <c:import url="/common/layout/header.jsp"/>
            <!-- Left side bar -->
            <c:import url="/common/layout/sidebar.jsp"/>

            <%-- Main content --%>
            <div class="content-wrapper">

                <%-- Header content --%>
                <section class="content-header">
                    <h1>
                        Device Order
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Device</a></li>
                        <li class="active"><a href="#">Order</a></li>
                    </ol>
                    <br>
                    <div>
                        <input type="text" value="0" id="myCart" readonly="readonly"
                               style="width: 5%; border-radius: 4px; border-color: #00a65a">
                        <a href="/">
                            <button class="btn btn-sm  btn-success"
                                    title="My Cart">
                                <i class="fa fa-fw fa-shopping-cart" aria-hidden="true"></i>
                            </button>
                        </a>
                    </div>
                </section>

                <section class="content">
                    <%-- Main page content --%>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box">
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Version</th>
                                                <th style="width: 50%">Description</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th style="width: 10%">Amount</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tracking-001</td>
                                                <td>1.0.2</td>
                                                <td>
                                                    4K video recording at 30 fps
                                                    1080p HD video recording at 30 fps or 60 fps
                                                    720p HD video recording at 30 fps
                                                    VDIS (Video Digital Image Stabilization)
                                                    Digital zoom 8x
                                                    High CRI LED Flash
                                                    Slow Motion video support for 720p at 240 fps
                                                    Hyperlapse video with stabilization
                                                    Continuous autofocus video
                                                    Face detection
                                                    Tracking AF
                                                    Take 9-megapixel still photos while recording 4K video
                                                    Playback zoom
                                                    Video Location tags
                                                </td>
                                                <td>200000</td>
                                                <td><span class="badge bg-green">Instock</span></td>
                                                <td>
                                                    <div>
                                                        <input type="text" value="0" class="amount"
                                                               style="width: 50%; border-radius: 4px; border-color: #00a65a">
                                                        <button class="btn btn-sm  btn-success order"
                                                                title="Add to Cart">
                                                            <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Tracking-256</td>
                                                <td>2.1.3</td>
                                                <td>
                                                    Powered by Qualcomm Snapdragon 835 with 8GB RAM, play the most
                                                    demanding games without lag—even when you're right in the heat of
                                                    chaos and carnage. Fine-tune your experience with Game Booster,
                                                    which utilizes best-in-class thermal design to fully maximize your
                                                    phone's performance.
                                                </td>
                                                <td>200000</td>
                                                <td><span class="badge bg-green">Instock</span></td>
                                                <td>
                                                    <div>
                                                        <input type="text" value="0" class="amount"
                                                               style="width: 50%; border-radius: 4px; border-color: #00a65a">
                                                        <button class="btn btn-sm  btn-success order"
                                                                title="Add to Cart">
                                                            <i class="fa fa-fw fa-plus" aria-hidden="true"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Version</th>
                                                <th>Description</th>
                                                <th>Price</th>
                                                <th>Status</th>
                                                <th>#</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <p id="p1"></p>
            </div>

            <%-- Footer --%>
            <c:import url="/common/layout/footer.jsp"/>
        </div>

        <script src="template/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/bower_components/datatables.net/js/jquery.dataTables.js"></script>
        <script src="template/bower_components/datatables.net-bs/js/dataTables.bootstrap.js"></script>
        <script>
            $(function () {
                $('#example1').DataTable()
            })
        </script>
        <script>
            $(function () {
                $(".order").click(function () {
                    var i = $(this).parent().parent().parent().index();
                    var amount = document.getElementsByClassName("amount")[i].value;
                    if (amount != parseInt(amount) || isNaN(amount)) {
                        alert('Only integer is allowed!')
                        document.getElementsByClassName("amount")[i].value = 0;
                    }
                    if (amount > 100) {
                        alert('Maximum is 100 units!')
                        document.getElementsByClassName("amount")[i].value = 0;
                    } else {
                        $("#myCart").val(parseInt($("#myCart").val()) + parseInt(amount));
                    }
                });
            })
        </script>
    </body>
</html>
