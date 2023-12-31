<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="asets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="asets/img/favicon.png">
  <title>
Camp Admin
  </title>
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <!-- Nucleo Icons -->
  <link href="asets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="asets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="asets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
  <div class="wrapper">
   
   <%String caname = request.getParameter("caname"); %>
   
      <div class="modal modal-search fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
        <div class="row">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">
                <h5 class="title">Create Camp</h5>
              </div>
              <div class="card-body">
                <form action="CampController" method="post">
                  <div class="row">
                  <!-- Modified District field as a dropdown list -->
                  <div class="col-md-6 pr-md-1">
                    <div class="form-group">
                      <label>District</label>
                      <select class="form-control" name="dist">
                        <option value="" selected disabled>Select District</option>
                        <!-- Add options for each district in Kerala -->
                        <option value="Alappuzha">Alappuzha</option>
                        <option value="Ernakulam">Ernakulam</option>
                        <option value="Idukki">Idukki</option>
                        <option value="Kannur">Kannur</option>
                        <option value="Kasaragod">Kasaragod</option>
                        <option value="Kollam">Kollam</option>
                        <option value="Kottayam">Kottayam</option>
                        <option value="Kozhikode">Kozhikode</option>
                        <option value="Malappuram">Malappuram</option>
                        <option value="Palakkad">Palakkad</option>
                        <option value="Pathanamthitta">Pathanamthitta</option>
                        <option value="Thiruvananthapuram">Thiruvananthapuram</option>
                        <option value="Thrissur">Thrissur</option>
                      </select>
                    </div>
                  </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Taluk</label>
                        <input type="text" class="form-control" placeholder="taluk" name="tal">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 pr-md-1">
                      <div class="form-group">
                        <label>Village</label>
                        <input type="text" class="form-control" placeholder="Village" name="vill">
                      </div>
                    </div>
                    <div class="col-md-6 pl-md-1">
                      <div class="form-group">
                        <label>Ward</label>
                        <input type="text" class="form-control" placeholder="ward" name="ward">
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Place/Address</label>
                        <input type="text" class="form-control" placeholder="Address" name="add">
                      </div>
                    </div>
                  </div>
                   <div class="row">
                  <div class="col-md-4 pr-md-1">
                    <div class="form-group">
                      <label>Map Location</label>
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="map" name="loc">
                        <div class="input-group-append">
                          <!-- Added btn-sm class for smaller button size -->
                          <a class="btn btn-outline-secondary btn-sm" href="https://www.google.com/maps" target="_blank">Add Location</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  </div>
                     <div class="row">
                    <div class="col-md-4 px-md-1">
                      <div class="form-group">
                        <label>Camp Name</label>
                        <input type="text" class="form-control" placeholder="name" name="name">
                      </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Contact Number</label>
                        <input type="number" class="form-control" placeholder="Number" name="phone">
                      </div>
                    </div>
                 </div>
                    <div class="row">
                     <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Maximum occupay</label>
                        <input type="number" class="form-control"  name="max">
                      </div>
                    </div>
                   <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Beds</label>
                        <input type="number" class="form-control" name="bed">
                      </div>
                    </div>
                    <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Bathroom</label>
                        <input type="number" class="form-control" name="bath">
                      </div>
                    </div>
                  </div>
                     <div class="row">
                    
                   <div class="col-md-4 pl-md-1">
                      <div class="form-group">
                        <label>Kitchen</label>
                        <input type="number" class="form-control" name="kitch">
                      </div>
                    </div>
                    </div>
                    <div class="card-footer text-center">
  <input type="hidden" name="caname" value="<%=caname %>">
  <input type="hidden" name="action" value="newCamp">
  <button type="submit" class="btn btn-fill btn-primary mx-auto">Save</button>
</div>
                  
                </form>
              </div>
              
            </div>
          </div>
        </div>
      </div>
        
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Background</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger background-color">
            <div class="badge-colors text-center">
              <span class="badge filter badge-primary active" data-color="primary"></span>
              <span class="badge filter badge-info" data-color="blue"></span>
              <span class="badge filter badge-success" data-color="green"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="adjustments-line text-center color-change">
          <span class="color-label">LIGHT MODE</span>
          <span class="badge light-badge mr-2"></span>
          <span class="badge dark-badge ml-2"></span>
          <span class="color-label">DARK MODE</span>
        </li>
        
      </ul>
    </div>
  </div>
      
  <!--   Core JS Files   -->
  <script src="asets/js/core/jquery.min.js"></script>
  <script src="asets/js/core/popper.min.js"></script>
  <script src="asets/js/core/bootstrap.min.js"></script>
  <script src="asets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <!-- Place this tag in your head or just before your close body tag. -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="asets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="asets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="asets/js/black-dashboard.min.js?v=1.0.0"></script><!-- Black Dashboard DEMO methods, don't include it in your project! -->
  <script src="asets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');
        $navbar = $('.navbar');
        $main_panel = $('.main-panel');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');
        sidebar_mini_active = true;
        white_color = false;

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



        $('.fixed-plugin a').click(function(event) {
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .background-color span').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data', new_color);
          }

          if ($main_panel.length != 0) {
            $main_panel.attr('data', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data', new_color);
          }
        });

        $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            sidebar_mini_active = false;
            blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
          } else {
            $('body').addClass('sidebar-mini');
            sidebar_mini_active = true;
            blackDashboard.showSidebarMessage('Sidebar mini activated...');
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);
        });

        $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
          var $btn = $(this);

          if (white_color == true) {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').removeClass('white-content');
            }, 900);
            white_color = false;
          } else {

            $('body').addClass('change-background');
            setTimeout(function() {
              $('body').removeClass('change-background');
              $('body').addClass('white-content');
            }, 900);

            white_color = true;
          }


        });

        $('.light-badge').click(function() {
          $('body').addClass('white-content');
        });

        $('.dark-badge').click(function() {
          $('body').removeClass('white-content');
        });
      });
    });
  </script>
  <script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
  <script>
    window.TrackJS &&
      TrackJS.install({
        token: "ee6fab19c5a04ac1a32a645abde4613a",
        application: "black-dashboard-free"
      });
  </script>
</body>

</html>
