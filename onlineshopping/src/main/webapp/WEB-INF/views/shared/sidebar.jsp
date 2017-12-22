<p class="lead">Shop Name</p>
	
	<div class="list-group">
	
	<c:forEach items="${categories}" var="category">
	<a href="${contextRoot}/show/category/${category.id}/products" class="list-group-item" id="_${category.name}">${category.name}</a>
	
	
	</c:forEach>
	
	
	<!-- <a href="#" class="list-group-item">Category 1</a>
	<a href="#" class="list-group-item">Category 2</a>
	<a href="#" class="list-group-item">Category 3</a>-->
	
	</div>