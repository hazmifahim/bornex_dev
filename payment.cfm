<cfoutput>
<!DOCTYPE html>
<html lang="en">
<cfinclude template="header.cfm">

<body class="body-wrapper">

<cfinclude template="nav_bar.cfm">

<section class="user-profile section">
	<div class="container">
		<div class="row">
			<div class="col-md-10 offset-md-1 col-lg-4 offset-lg-0">
				<div class="sidebar">
					
					<!-- Dashboard Links -->
					<div class="widget user-dashboard-menu">
						<ul>
							<li class="active">
								<a href=""><i class="fa fa-shopping-cart"></i> Cart</a></li>
							<li>
								<a href="">Subtotal <span>RM 180.00</span></a>
							</li>
							<li>
								<a href="">Tax<span>RM 0.00</span></a>
							</li>
							<li>
								<a href="">Shipping<span>RM 0.00</span></a>
							</li>
							<li class="active" ><a href=""><i class="fa fa-money"></i> Total<span>RM 180.00</span></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-10 offset-md-1 col-lg-8 offset-lg-0">
				<!-- Edit Personal Info -->
				<div class="widget personal-info">
					<h3 class="widget-header user">Billing Contact Information</h3>
					<form action="api/toyyibpay/create_bill.cfm" method="post">
						<div class="form-group">
						    <label for="fullname">Full Name<span class="text-danger">*</span></label>
						    <input type="text" class="form-control" id="fullname" name="fullname">
						</div>
						<div class="form-group">
						    <label for="contact_no">Contact Number<span class="text-danger">*</span></label>
						    <input type="text" class="form-control" id="contact_no" name="contact_no">
						</div>
						<div class="form-group">
						    <label for="email">Email Address<span class="text-danger">*</span></label>
						    <input type="email" class="form-control" id="email" name="email">
						</div>
						<div class="form-group">
						    <label for="reconfirm_email">Confirm Email Address<span class="text-danger">*</span></label>
						    <input type="email" class="form-control" id="reconfirm_email" name="reconfirm_email">
						</div>
						<input type="hidden" value="180.00" name="total_price">
						<button type="submit" class="btn add-button">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!--============================
=            Footer            =
=============================-->

<footer class="footer section section-sm">
  <!-- Container Start -->
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-7 offset-md-1 offset-lg-0">
        <!-- About -->
        <div class="block about">
          <!-- footer logo -->
          <img src="images/logo-footer.png" alt="">
          <!-- description -->
          <p class="alt-color">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        </div>
      </div>
      <!-- Link list -->
      <div class="col-lg-2 offset-lg-1 col-md-3">
        <div class="block">
          <h4>Site Pages</h4>
          <ul>
            <li><a href="##">Boston</a></li>
            <li><a href="##">How It works</a></li>
            <li><a href="##">Deals & Coupons</a></li>
            <li><a href="##">Articls & Tips</a></li>
            <li><a href="##">Terms of Services</a></li>
          </ul>
        </div>
      </div>
      <!-- Link list -->
      <div class="col-lg-2 col-md-3 offset-md-1 offset-lg-0">
        <div class="block">
          <h4>Admin Pages</h4>
          <ul>
            <li><a href="##">Boston</a></li>
            <li><a href="##">How It works</a></li>
            <li><a href="##">Deals & Coupons</a></li>
            <li><a href="##">Articls & Tips</a></li>
            <li><a href="##">Terms of Services</a></li>
          </ul>
        </div>
      </div>
      <!-- Promotion -->
      <div class="col-lg-4 col-md-7">
        <!-- App promotion -->
        <div class="block-2 app-promotion">
          <a href="">
            <!-- Icon -->
            <img src="images/footer/phone-icon.png" alt="mobile-icon">
          </a>
          <p>Get the Dealsy Mobile App and Save more</p>
        </div>
      </div>
    </div>
  </div>
  <!-- Container End -->
</footer>
<!-- Footer Bottom -->
<footer class="footer-bottom">
    <!-- Container Start -->
    <div class="container">
      <div class="row">
        <div class="col-sm-6 col-12">
          <!-- Copyright -->
          <div class="copyright">
            <p>Copyright © 2016. All Rights Reserved</p>
          </div>
        </div>
        <div class="col-sm-6 col-12">
          <!-- Social Icons -->
          <ul class="social-media-icons text-right">
              <li><a class="fa fa-facebook" href=""></a></li>
              <li><a class="fa fa-twitter" href=""></a></li>
              <li><a class="fa fa-pinterest-p" href=""></a></li>
              <li><a class="fa fa-vimeo" href=""></a></li>
            </ul>
        </div>
      </div>
    </div>
    <!-- Container End -->
    <!-- To Top -->
    <div class="top-to">
      <a id="top" class="" href=""><i class="fa fa-angle-up"></i></a>
    </div>
</footer>

<cfinclude template="scripts.cfm">

</body>
</html>
</cfoutput>