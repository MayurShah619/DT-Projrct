<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="nav-bar-header">
			<button type="button" class="navbar-toggle" data-target="#mainNavbar"
				data-toggle="collapse">
				<span class="sr-only"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
  		<a class="navbar-brand" href="${contextRoot}/home" style="font-size:25px; background-color:white; color: black"><strong>OvaWorld</strong></a>
		</div>
		<div class="navbar-collapse collapse" id="mainNavbar">
			<ul class="nav navbar-nav">
				<li id="home" class="active"><a href="${contextRoot}/home"><span
						class="glyphicon glyphicon-home"> Home</span></a></li>
				<!--  <li><a href="${contexRoot}/contact"><span class="glypicon glyphicon-earphone"> Contact</span></a></li>-->

				<li id="about"><a href="${contextRoot}/about"><span
						class="glyphicon glyphicon-info-sign"> About Us</span></a></li>
				<li id="contact"><a href="${contextRoot}/contact"><span
						class="glyphicon glyphicon-earphone"> Contact Us</span></a></li>
				<li id="listProducts"><a
					href="${contextRoot}/show/all/products"><span
						class="glyphicon glyphicon-folder-open"> View Product</span></a></li>
			
			<security:authorize access="hasAuthority('ADMIN')">
				<li id="manageProducts"><a
					href="${contextRoot}/manage/products"><span
						class="glyphicon glyphicon-folder-open"> Manage Products</span></a></li>
        </security:authorize>
			</ul>
			<!--<form class="navbar-form navbar-left" role="search">
	<div class="form-group">
	<input type="text" class="form-control" placeholder="search">
	</div>
	<button type="submit" class="btn btn-default">Submit</button>
</form>-->
			<ul class="nav navbar-nav navbar-right">
			<security:authorize access="isAnonymous()">
				<li id="register"><a href="${contextRoot}/register"><span
						class="glyphicon glyphicon-log-in"> Sign Up</span></a>
						</li>
						
						
				<li id="login"><a href="${contextRoot}/login"><span
						class="glyphicon glyphicon-user"> Login</span></a>
						
						</li>

                </security:authorize>
                <security:authorize access="isAuthenticated()">
				<li class="dropdown" id="userCart">
				<a href="javascript:void(0)"
					class="btn btn-default dropdown-toggle" id="dropdownMenu1"
					data-toggle="dropdown"> 
					${userModel.fullName}
					
					 <span class="caret"></span>
				</a>

					<ul class="dropdown-menu">
            <security:authorize access="hasAuthority('USER')">
						<li><a href="${contextRoot}/cart/show"> <span
								class="glyphicon glyphicon-shopping-cart"></span> <span
								class="badge">${userModel.cart.cartLines}</span> 
								 &#8377; ${userModel.cart.grandTotal}
								
						</a></li>
						<li class="divider" role="seperator"></li>
             </security:authorize>
						<li><a href="${contextRoot}/perform-logout">Logout</a>
						</li>
					</ul>
			</security:authorize>
			
			</ul>
		</div>
	</div>
</nav>

<script>
window.userRole = '${userModel.role}';
</script>