<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Categories</title>
    <link rel="stylesheet" href="{{ asset('css/vendor.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('style.css') }}">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>


<body class="container">
    <header id="header" class="site-header text-black">
        <div class="header-top border-bottom py-2">
            <div class="container-lg">
                <div class="row justify-content-evenly">
                    <div class="col">
                        <ul class="social-links list-unstyled d-flex m-0">
                            <li class="pe-2">
                                <a href="#">
                                    <svg class="facebook" width="20" height="20">
                                        <use xlink:href="#facebook"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="pe-2">
                                <a href="#">
                                    <svg class="instagram" width="20" height="20">
                                        <use xlink:href="#instagram"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="pe-2">
                                <a href="#">
                                    <svg class="youtube" width="20" height="20">
                                        <use xlink:href="#youtube"></use>
                                    </svg>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <svg class="pinterest" width="20" height="20">
                                        <use xlink:href="#pinterest"></use>
                                    </svg>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col d-none d-md-block">
                        <p class="text-center text-black m-0"><strong>Special Offer</strong>: Free Shipping on all the
                            orders above $100
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <nav id="header-nav" class="navbar navbar-expand-lg">
            <div class="container-lg">
                <a class="navbar-brand" href="index.html">
                    <img src="images/main-logo.png" class="logo" alt="logo">
                </a>
                <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <svg class="navbar-icon">
                        <use xlink:href="#navbar-icon"></use>
                    </svg>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                    <div class="offcanvas-header px-4 pb-0">
                        <a class="navbar-brand ps-3" href="index.html">
                            <img src="images/main-logo.png" class="logo" alt="logo">
                        </a>
                        <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas"
                            aria-label="Close" data-bs-target="#bdNavbar"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul id="navbar"
                            class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                            <a class="nav-link me-5" href="{{ route('page.home') }}">Home</a>
                            @foreach ($categories as $cate)
                                <li class="nav-item">
                                    <a class="nav-link me-5"
                                        href="{{ route('page.list', $cate->id) }}">{{ $cate->name }}</a>
                                </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="user-items ps-0 ps-md-5">
                    <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                        <li class="pe-3">
                            <a href="login" data-bs-toggle="modal" data-bs-target="#modallogin" class="border-0">
                                <svg class="user" width="24" height="24">
                                    <use xlink:href="#user"></use>
                                </svg>
                            </a>
                        </li>
                        <li class="pe-3">
                            <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                <svg class="shopping-cart" width="24" height="24">
                                    <use xlink:href="#shopping-cart"></use>
                                </svg>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="search-item border-0" data-bs-toggle="collapse"
                                data-bs-target="#search-box" aria-label="Toggle navigation">
                                <svg class="search" width="24" height="24">
                                    <use xlink:href="#search"></use>
                                </svg>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
     <nav class="">
        {{-- Danh sach category --}}
       
    <div class="row">
        @foreach ($books as $book)
     <div class="card col-md-3 ms-3 mt-3 " style="width: 18rem;">
            <img src="{{$book->thumbnail}}" class="card-img-top" alt="...">
          <div class="">
            <div class="card-body">
                <a class="card-title fs-4 text-decoration-none text-primary" href="{{route('page.detail',$book->id)}}">Ten sach:{{$book->title}}</a>
                <p class="card-text">Gia:{{$book->Price}} $</p>
                <p class="card-text">Nha san xuat: {{$book->publisher}}</p>
                <p class="card-text">Ngay phat hanh: {{$book->Publication}}</p>
                <p class="card-text">So luong: {{$book->Quantity}}</p>
                <p class="card-text">Ten tac gia: {{$book->author}}</p>
            </div>
          </div>
        </div>
@endforeach
    </div>

     {{-- Phan trang --}}
     {{$books->links()}}

    <footer id="footer" class="py-5 border-top">
        <div class="container-lg">
          <div class="row">
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-2">Info</h5>
                <ul class="menu-list list-unstyled">
                  <li class="pb-2">
                    <a href="#">Track Your Order</a>
                  </li>
                  <li class="pb-2">
                    <a href="index.html">Our Blog</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Privacy policy</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Shipping</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Contact Us</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Help</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Community</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-2">About</h5>
                <ul class="menu-list list-unstyled">
                  <li class="pb-2">
                    <a href="#">History</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Our Team</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Services</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Company</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Manufacture</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Wholesale</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Retail</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-2">Women Shoes</h5>
                <ul class="menu-list list-unstyled">
                  <li class="pb-2">
                    <a href="#">Track Your Order</a>
                  </li>
                  <li class="pb-2">
                    <a href="index.html">Our Blog</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Privacy policy</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Shipping</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Contact Us</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Help</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Community</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-2">Popular</h5>
                <ul class="menu-list list-unstyled">
                  <li class="pb-2">
                    <a href="#">Prices Drop</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">New Products</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Best Sales</a>
                  </li>
                  <li class="pb-2">
                    <a href="index.html">Stores</a>
                  </li>
                  <li class="pb-2">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#modallogin">Login</a>
                  </li>
                  <li class="pb-2">
                    <a href="#" data-bs-toggle="modal" data-bs-target="#modallong">Cart</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-2">Mens Collection</h5>
                <ul class="menu-list list-unstyled">
                  <li class="pb-2">
                    <a href="#">Delivery</a>
                  </li>
                  <li class="pb-2">
                    <a href="index.html">About Us</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Shoes</a>
                  </li>
                  <li class="pb-2">
                    <a href="#">Contact Us</a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-2 pb-3">
              <div class="footer-menu">
                <h5 class="widget-title pb-3">Get In Touch</h5>
                <div class="footer-contact-text">
                  <span>Stylish Online Store 123 Main Street, Toulouse - France. </span>
                  <span> Call us: (+33) 800 456 789-987 </span>
                  <span class="text-hover fw-bold light-border"><a href="mailto:contact@yourwebsite.com">contact@yourwebsite.com</a></span>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <p>© Copyright Stylish 2023.</p>
            </div>
            <div class="col-md-6 text-lg-end">
              <p>Free HTML by <a href="https://templatesjungle.com/" target="_blank">TemplatesJungle</a><br> Distributed by <a href="https://themewagon.com" target="blank">ThemeWagon</a> </p>
            </div>
          </div>
        </div>
      </footer>
  
      <script src="{{ asset('js/jquery-1.11.0.min.js') }}"></script>
      <script src="{{ asset('js/plugins.js') }}"></script>
      <script src="{{ asset('js/script.js') }}"></script>
      <!-- Code injected by live-server -->
      <script>
          // <![CDATA[  <-- For SVG support
          if ('WebSocket' in window) {
              (function() {
                  function refreshCSS() {
                      var sheets = [].slice.call(document.getElementsByTagName("link"));
                      var head = document.getElementsByTagName("head")[0];
                      for (var i = 0; i < sheets.length; ++i) {
                          var elem = sheets[i];
                          var parent = elem.parentElement || head;
                          parent.removeChild(elem);
                          var rel = elem.rel;
                          if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() ==
                              "stylesheet") {
                              var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                              elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date()
                                  .valueOf());
                          }
                          parent.appendChild(elem);
                      }
                  }
                  var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
                  var address = protocol + window.location.host + window.location.pathname + '/ws';
                  var socket = new WebSocket(address);
                  socket.onmessage = function(msg) {
                      if (msg.data == 'reload') window.location.reload();
                      else if (msg.data == 'refreshcss') refreshCSS();
                  };
                  if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
                      console.log('Live reload enabled.');
                      sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
                  }
              })();
          } else {
              console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
          }
          // ]]>
      </script>
</body>
</html>
