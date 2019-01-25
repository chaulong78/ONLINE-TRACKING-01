<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>My Order</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="template/bower_components/bootstrap/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="template/bower_components/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="template/bower_components/Ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="template/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="template/dist/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="template/plugins/iCheck/all.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
        <style>
            #prods {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #prods td, th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #prods tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #prods tr:hover {
                background-color: #ddd;
            }

            #prods th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }

            input[type=text] {
                width: 100%;
                margin-bottom: 20px;
                border: 1px solid #ccc;
            }

            label {
                margin-bottom: 10px;
                display: block;
            }

            .icon-container {
                margin-bottom: 20px;
                font-size: 50px;
            }

            .row {
                display: -ms-flexbox; /* IE10 */
                display: flex;
                -ms-flex-wrap: wrap; /* IE10 */
                flex-wrap: wrap;
                margin: 0 -16px;
            }

            .col-50 {
                -ms-flex: 50%; /* IE10 */
                flex: 50%;
                padding: 0 16px;
            }

            .card-infor {
                display: block;
            }
        </style>
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
                        Order Information
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li><a href="#">Device</a></li>
                        <li><a href="#">Order</a></li>
                        <li class="active"><a href="#">My Order</a></li>
                    </ol>
                    <br>
                    </ul>
                </section>

                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <br>
                                <form role="form">
                                    <div class="box-body">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="fullName">Full name</label>
                                                <input type="text" class="form-control"
                                                       id="fullName" name="fullName" value="Phạm Châu Long"
                                                       required>
                                            </div>

                                            <div class="form-group">
                                                <label for="phone">Phone</label>
                                                <input type="text" class="form-control"
                                                       id="phone" name="phone" value="0943394172"
                                                       required>
                                            </div>

                                            <div class="form-group">
                                                <label for="email">Email</label>
                                                <input type="email" class="form-control"
                                                       id="email" name="email" value="chaulongdbp@gmail.com"
                                                >
                                            </div>

                                            <div class="form-group">
                                                <label for="address">Address</label>
                                                <textarea class="form-control" rows="5" style="resize: none"
                                                          id="address" name="address">
                                                </textarea>
                                            </div>

                                            <div class="form-group">
                                                <label for="note">Note</label>
                                                <textarea class="form-control" rows="5" style="resize: none" id="note"
                                                          name="note">
                                                </textarea>
                                            </div>
                                        </div>

                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <div class="col-md-6" id="payment">
                                                    <label>Choose a payment method</label>
                                                    <div>
                                                        <label>
                                                            <input type="radio"  name="payment"
                                                                   class="minimal" value="cod">
                                                            COD
                                                        </label>
                                                    </div>
                                                    <div>
                                                        <label>
                                                            <input type="radio"  name="payment"
                                                                   class="minimal" value="card">
                                                            Pay by credit card
                                                        </label>
                                                    </div>
                                                    <br>
                                                </div>

                                                <div id="card-info">
                                                    <div class="col-md-6">
                                                        <label>Accepted Cards</label>
                                                        <div class="icon-container">
                                                            <i class="fa fa-cc-visa" style="color:navy;"></i>
                                                            <i class="fa fa-cc-amex" style="color:blue;"></i>
                                                            <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                                            <i class="fa fa-cc-discover" style="color:orange;"></i>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="col-md-6">
                                                        <label for="card-name">Name on Card</label>
                                                        <input type="text" id="card-name" name="card-name"
                                                               class="form-control"
                                                               placeholder="PHAM CHAU LONG">
                                                        <label for="card-number">Credit card number</label>
                                                        <input type="text" id="card-number" name="card-number"
                                                               class="form-control"
                                                               placeholder="1111-2222-3333-4444">
                                                    </div>
                                                    <div class="col-md-6">
                                                        <label for="exp-month">Exp Month</label>
                                                        <input type="text" id="exp-month" name="exp-month"
                                                               class="form-control"
                                                               placeholder="September">
                                                        <div class="row">
                                                            <div class="col-50">
                                                                <label for="exp-year">Exp Year</label>
                                                                <input type="text" id="exp-year" name="exp-year"
                                                                       class="form-control"
                                                                       placeholder="2018">
                                                            </div>
                                                            <div class="col-50">
                                                                <label for="cvv">CVV</label>
                                                                <input type="text" id="cvv" name="cvv"
                                                                       class="form-control"
                                                                       placeholder="352">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <table id="prods" class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <th>Name</th>
                                                                <th>Quantity</th>
                                                                <th>Price</th>
                                                                <th>Amount</th>
                                                                <th style="width: 5%">#</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody id="prod-body">
                                                            <tr>
                                                                <td>Tracking-001</td>
                                                                <td class="quantity">2</td>
                                                                <td class="price">300000</td>
                                                                <td class="amount"></td>
                                                                <td>
                                                                    <button type="button"
                                                                            class="btn btn-sm  btn-danger order"
                                                                            title="Remove from Cart"
                                                                            onclick="deleteRow(this);">
                                                                        <i class="fa fa-fw fa-minus"
                                                                           aria-hidden="true"></i>
                                                                    </button>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Tracking-002</td>
                                                                <td class="quantity">1</td>
                                                                <td class="price">250000</td>
                                                                <td class="amount"></td>
                                                                <td>
                                                                    <button type="button"
                                                                            class="btn btn-sm  btn-danger order"
                                                                            title="Remove from Cart"
                                                                            onclick="deleteRow(this);">
                                                                        <i class="fa fa-fw fa-minus"
                                                                           aria-hidden="true"></i>
                                                                    </button>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <hr>
                                                    <p><b>Total: </b><span id="total"></span><span> VND</span></p>
                                                    <p><b>Shipping cost: </b><span
                                                            id="ship">30000</span><span> VND</span>
                                                    </p>
                                                    <hr>
                                                    <p><b>Oder total: </b><span
                                                            id="order-total"></span><span> VND</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="box-footer">
                                        <div style="float: right">
                                            <button type="submit" class="btn btn-primary"
                                                    onclick="return confirm('Are you sure?')">Submit
                                            </button>
                                            <button type="button" class="btn btn-danger"
                                                    data-dismiss="modal">Cancel
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <script src="template/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <script src="template/dist/js/adminlte.min.js"></script>
        <script src="template/plugins/iCheck/icheck.min.js"></script>
        <script>
            $(function () {
                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                });
            })
        </script>
        <script>
            $(function () {
                var total = 0;
                var len = $(".quantity").length;
                for (var i = 0; i < len; i++) {
                    var amount = $(".quantity").eq(i).html() * $(".price").eq(i).html();
                    $(".amount").eq(i).html(amount);
                    total += parseFloat($(".amount").eq(i).html());
                }
                $("#total").html(total);
                $("#order-total").html(parseFloat($("#total").html()) + parseFloat($("#ship").html()));
            });
        </script>
        <script>
            function deleteRow(r) {
                var i = r.parentNode.parentNode.rowIndex - 1;
                // alert(i);
                if (confirm('Are you sure want to remove this product?')) {
                    var amount = parseFloat($(".amount").eq(i).html());
                    var total = parseFloat($("#total").html())
                    var x = total - amount;
                    $("#total").html(x);
                    $("#order-total").html(parseFloat($("#ship").html()) + parseFloat(x));
                    document.getElementById("prods").deleteRow(i + 1);
                }
            }
        </script>
        <script>

                  $('input[type=radio]').on('ifChecked', function(event){
                      if($(this).val() == 'cod')
                          $("#card-info").hide();
                      else
                          $("#card-info").show();
                  });


        </script>
    </body>
</html>
