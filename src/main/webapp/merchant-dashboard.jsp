<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Merchant Dashboard</title>
    <link rel="stylesheet"href="${pageContext.request.contextPath}/css/dashboard.css"type="text/css" />
    <link rel="shortcut icon" href="./img/estock1.png" type="image/x-icon">
    <!-- material icon -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    <!-- Jquery -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css" type="text/css" />
    <!-- Fontawesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<style>
/* Preloder */

#preloder {
  position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 999999;
  background: #000;
}

.loader {
  width: 40px;
  height: 40px;
  position: absolute;
  top: 50%;
  left: 50%;
  margin-top: -13px;
  margin-left: -13px;
  border-radius: 60px;
  animation: loader 0.8s linear infinite;
  -webkit-animation: loader 0.8s linear infinite;
}

@keyframes loader {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
    border: 4px solid #f44336;
    border-left-color: transparent;
  }
  50% {
    -webkit-transform: rotate(180deg);
    transform: rotate(180deg);
    border: 4px solid #673ab7;
    border-left-color: transparent;
  }
  100% {
    -webkit-transform: rotate(360deg);
    transform: rotate(360deg);
    border: 4px solid #f44336;
    border-left-color: transparent;
  }
}

@-webkit-keyframes loader {
  0% {
    -webkit-transform: rotate(0deg);
    border: 4px solid #f44336;
    border-left-color: transparent;
  }
  50% {
    -webkit-transform: rotate(180deg);
    border: 4px solid #673ab7;
    border-left-color: transparent;
  }
  100% {
    -webkit-transform: rotate(360deg);
    border: 4px solid #f44336;
    border-left-color: transparent;
  }
}
.container {
  display: grid;
  width: 96%;
  margin: 0 auto;
  gap: 1.8rem;
  grid-template-columns: 12rem auto 16rem;
}
aside .logo img {
  width: 100%;
  height: auto;
}
</style>
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
      <div class="loader"></div>
    </div>
    <div class="container">

        <!-- sidebar section -->
        <aside>
            <div class="top">
                <!-- logo -->
                <div class="logo">  
                    <img src="img/logo.png" id="logo" alt="logo">
                </div>

                 <!-- hamburger -->
                <div class="close" id="close-btn">
                    <img src="./img/close-icon.png" class="nav-icon" alt="">
                </div>
            </div>

            <!-- sidebar -->
            <div class="sidebar">
                <a href="/" class="active" >
                    <span class="material-icons">dashboard</span>
                    <h3>Dashboard</h3>
                </a>
                <a href="#analytics">
                    <span class="material-icons">insights</span>
                    <h3>Analytics</h3>
                </a>
                <a href="#messages">
                    <span class="material-icons">mail_outline</span>
                    <h3>Messages</h3>
                    <span class="message-count">20</span>
                <a href="#products">
                    <span class="material-icons">layers</span>
                    <h3>Products</h3>
                </a>
                <a href="#settings">
                    <span class="material-icons">settings</span>
                    <h3>Settings</h3>
                </a>
                <a href="#add_product">
                    <span class="material-icons">add</span>
                    <h3>Add Products</h3>
                </a>
                <a href="#logout">
                    <span class="material-icons">logout</span>
                    <h3>Logout</h3>
                </a>
            </div>  
        </aside>
        <!--end of side bar-->
        <main>
            <h1>Dashboard</h1>
            <div class="date">
                <input type="date" name="date" id="date">
            </div>
            <!-- Insights -->
            <div class="insights">
                <div class="sales">
                    <span class="material-icons">analytics</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total sales</h3>
                            <h1>₦879,800</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>81%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24hrs</small>
                </div><!--End of sales-->
                <div class="expenses">
                    <span class="material-icons">bar_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Expenses</h3>
                            <h1>₦79,400</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>21%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24hrs</small>
                </div><!--End of expense-->
                <div class="income">
                    <span class="material-icons">stacked_line_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Income</h3>
                            <h1>₦800,400</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>79%</p>
                            </div>
                        </div>
                    </div>
                    <small class="text-muted">Last 24hrs</small>
                </div><!--End of income-->
            </div>

            <!-- recent orders -->
            <div class="recent-orders">
                <h2>Recent Orders</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Product Name</th>
                            <th>Product Number</th>
                            <th>Payment</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                        <tr>
                            <td>Cow meat (5kilos)</td>
                            <td>8993</td>
                            <td>Due</td>
                            <td class="warning">Pending</td>
                            <td class="primary">Details</td>
                        </tr>
                    </tbody>
                </table>
                <div class="show-all">
                    <a href="#show-all">Show All</a>
                </div>
            </div>
        </main>
        <!-- ============= END OF MAIN ===================== -->

        <div class="right">
            <div class="top">
                <button id="menu-btn">
                    <span class="material-icons">
                        menu
                    </span>
                    </button>
                    <div class="theme-toggler">
                        <span class="material-icons active">
                            light_mode
                        </span>
                        <span class="material-icons">
                            dark_mode
                        </span>
                    </div>
                    <div class="profile">
                        <div class="info">
                            <p>Hey, <b>Peters</b></p>
                            <small class="text-muted">Admin</small>
                        </div>
                        <div class="profile-photo">
                            <img src="./img/profile.png" alt="">
                        </div>
                    </div>
            </div>
            <!-- END OF TOP -->
            <div class="recent-updates">
                <h2>Recent Updates</h2>
                <div class="updates">
                    <div class="update">
                        <div class="profile-photo">
                            <img src="./img/profile2.webp" alt="">
                        </div>
                        <div class="message">
                            <p><b>Mike Tyson</b>: received his order of Night Lion Tech GPS Drone</p>
                            <small class="text-muted">2 Minutes Ago</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-photo">
                            <img src="./img/profile4.jpg" alt="">
                        </div>
                        <div class="message">
                            <p><b>Mike Tyson</b>: received his order of Night Lion Tech GPS Drone</p>
                            <small class="text-muted">2 Minutes Ago</small>
                        </div>
                    </div>
                    <div class="update">
                        <div class="profile-photo">
                            <img src="./img/profile.png" alt="">
                        </div>
                        <div class="message">
                            <p><b>Mike Tyson</b>: received his order of Night Lion Tech GPS Drone</p>
                            <small class="text-muted">2 Minutes Ago</small>
                        </div>
                    </div>
                </div>
            </div>
            <!--  --------------- END OF RECENT UPDATES -->

            <div class="sales-analytics">
                <h2>Sales Analytics</h2>
                <div class="item online">
                    <div class="icon">
                        <span class="material-icons">
                            shopping_cart
                        </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>ONLINE ORDERS</h3>
                            <small class="text-muted">Last 24 hours</small>
                        </div>
                        <h5 class="success">+39%</h5>
                        <h3>3849</h3>
                    </div>
                </div>
                <div class="item offline">
                    <div class="icon">
                        <span class="material-icons">
                            local_mall
                        </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>OFFLINE ORDERS</h3>
                            <small class="text-muted">Last 24 hours</small>
                        </div>
                        <h5 class="danger">-17%</h5>
                        <h3>1100</h3>
                    </div>
                </div>
                <div class="item customers">
                    <div class="icon">
                        <span class="material-icons">
                            person
                        </span>
                    </div>
                    <div class="right">
                        <div class="info">
                            <h3>NEW CUSTOMERS</h3>
                            <small class="text-muted">Last 24 hours</small>
                        </div>
                        <h5 class="success">+25%</h5>
                        <h3>849</h3>
                    </div>
                </div>
                <div class="item add-product">
                    <div>
                        <span class="material-icons">add</span>
                        <h3>Add Product</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<script src="https://code.jquery.com/jquery-3.6.3.js" integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM=" crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/js/.js"></script>
    
    <script>
    /*------------------
   --------------------*/
  $(window).on("load", function () {
    $(".loader").fadeOut();
    $("#preloder").delay(200).fadeOut("slow");

  });
    </script>
</body>
</html>