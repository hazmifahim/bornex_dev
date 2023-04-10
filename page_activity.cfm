<cfoutput>
<!DOCTYPE html>
<html lang="en">
<cfinclude template="header.cfm">

<body class="body-wrapper">

<cfinclude template="nav_bar.cfm">

<section class="page-search">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Advance Search -->
				<div class="advance-search">
					<form>
						<div class="form-row">
							<div class="form-group col-md-4">
								<input type="text" class="form-control" id="inputtext4" placeholder="What are you looking for">
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control" id="inputCategory4" placeholder="Category">
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control" id="inputLocation4" placeholder="Location">
							</div>
							<div class="form-group col-md-2">
								
								<button type="submit" class="btn btn-primary">Search Now</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section-sm">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="search-result bg-gray">
					<h2>Results For "Electronics"</h2>
					<p>123 Results on 12 December, 2017</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-3">
				<div class="category-sidebar">
					<div class="widget category-list">
					<h4 class="widget-header">All Category</h4>
					<ul class="category-list">
						<cfquery name="data_category" datasource="bornex_major">
							SELECT *
							FROM category
						</cfquery>
						<cfloop query="data_category">
							<li><a href="##">#data_category.description#</a></li>
						</cfloop>
						
						<!--- <li><a href="category.html">Iphone <span>233</span></a></li>
						<li><a href="category.html">Microsoft  <span>183</span></a></li>
						<li><a href="category.html">Monitors <span>343</span></a></li> --->
					</ul>
				</div>

				<div class="widget category-list">
					<h4 class="widget-header">Location</h4>
					<ul class="category-list">
						<li><a href="category.html">New York <span>93</span></a></li>
						<li><a href="category.html">New Jersy <span>233</span></a></li>
						<li><a href="category.html">Florida  <span>183</span></a></li>
						<li><a href="category.html">California <span>120</span></a></li>
						<li><a href="category.html">Texas <span>40</span></a></li>
						<li><a href="category.html">Alaska <span>81</span></a></li>
					</ul>
				</div>

			
			</div>

			</div>
			<div class="col-md-9">
				<div class="box-body">
					<cfset tableid="table_asset">
						<table id="#tableid#" class="d-none" cellspacing="0" width="100%">
							<thead>
								<th></th>
							</thead>
						</table>
				</div>
				<!--- <div class="category-search-filter">
					<div class="row">
						<div class="col-md-6">
							<strong>Short</strong>
							<select>
								<option>Most Recent</option>
								<option value="1">Most Popular</option>
								<option value="2">Lowest Price</option>
								<option value="4">Highest Price</option>
							</select>
						</div>
						<div class="col-md-6">
							<div class="view">
								<strong>Views</strong>
								<ul class="list-inline view-switcher">
									<li class="list-inline-item">
										<a href="javascript:void(0);"><i class="fa fa-th-large"></i></a>
									</li>
									<li class="list-inline-item">
										<a href="javascript:void(0);"><i class="fa fa-reorder"></i></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="product-grid-list">
					<div class="row mt-30">
						<cfquery name="data_activity" datasource="bornex_major">
							SELECT *
							FROM activity
						</cfquery>
						<cfloop query="data_activity">
							<div class="col-sm-12 col-lg-4 col-md-6">
								<!-- product card -->
								<div class="product-item bg-light">
									<div class="card">
										<div class="thumb-content">
											<a href="">
												<img class="card-img-top img-fluid" src="images/products/products-3.jpg" alt="Card image cap">
											</a>
										</div>
										<div class="card-body">
											<h4 class="card-title"><a href="">#data_activity.title#</a></h4>
											<ul class="list-inline product-meta">
												<li class="list-inline-item">
													<a href=""><i class="fa fa-dollar"></i>RM #decimalformat(data_activity.price)#</a>
												</li>
											</ul>
											<p class="card-text">#data_activity.description#</p>
											<div class="product-ratings">
												<ul class="list-inline">
													<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
													<li class="list-inline-item selected"><i class="fa fa-star"></i></li>
													<li class="list-inline-item"><i class="fa fa-star"></i></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</cfloop>
						
						
					</div>
				</div>
				<div class="pagination justify-content-center">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="##" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="##">1</a></li>
							<li class="page-item active"><a class="page-link" href="##">2</a></li>
							<li class="page-item"><a class="page-link" href="##">3</a></li>
							<li class="page-item">
								<a class="page-link" href="##" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
									<span class="sr-only">Next</span>
								</a>
							</li>
						</ul>
					</nav>
				</div> --->
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

<script>
	var #tableid# = $('###tableid#').DataTable({
			"dom": '<"row"<"col-sm-6 container-left toolbar"><"col-sm-6 container-right text-right" <"##search_style" f >>><"row display-flex output"><"row"<"col-sm-5"i><"col-sm-7"p>>',
			"searching": true,
			"language": { search: "" },
			"responsive": true,
			"processing": false,
			"serverSide": true,
			"pageLength": 9,
			
			"ajax": $.fn.dataTable.pipeline({
				url: "page_activity_data.cfm",
			}),
			"drawCallback": function (settings) {
				var api = this.api();
				var rows = api.rows({
						page: 'current'
				}).data();
				var html = '';
				for (var i = 0; i < rows.length; i++) {
					console.log(rows[i][4]);
						var image = '';
						if(rows[i][4]){
								image = rows[i][4]
						} else {
								image = "no_image.png"
						}

						html += '<div class="col-sm-6 col-md-4">';
						html += '<div class="card testimonial-card" id=' + rows[i][0] + ' onclick="asset_info('+ rows[i][0] +')" style="width: 250px; height: 300px; margin-bottom: 10px;">\n'
						html += '	<div class="card-up bg-aqua-gradient"></div>\n'
						html += '	<div class="avatar mx-auto white"><img src="images/category/' + image + '" class="card-img-top" style="object-fit:contain"></div>\n'
						html += '	<div class="card-body" style="margin-top:0px;">\n'
						html += '		<h6 class="card-title dark-grey-text" style="font-size:14px;text-align:center"><strong>' + rows[i][1] + '</strong></h6>\n'
						html += '	</div>\n'
						html += '</div>\n'
						html += '</div>\n';
				}
				$(".output").html(html)
				$("##asset_total_code").text(api.page.info().recordsTotal)
			}
		});
</script>

</body>
</html>
</cfoutput>