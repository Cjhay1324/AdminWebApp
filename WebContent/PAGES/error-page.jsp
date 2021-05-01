<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row row-cols-2 mt-3">
	<div class="container">
		<h3>Error Page</h3>
	</div>
</div>
<div class="container table-responsive-xl w-100">
	<table class="table my-3 table-borderless shadow table-hover">
		<thead class="thead-dark">
			<tr>
				<th scope="col" class="w-100">
					<div class="row row-cols-3">
						<div class="col-1">
							<div class="form-check">
								<input class="form-check-input w-100 text-center"
									type="checkbox" id="selectAll" value="selectAll">
							</div>
						</div>
						<div class="col-2 col-lg-1"></div>
						<div class="col-6 col-lg-7">
							<span>Name</span>
						</div>
						<div class="col-3">
							<span>Role</span>
						</div>
					</div>
				</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var = "user" items = "${ users }" >
			<tr class="users-col">
				<td class="w-100">
					<div class="row row-cols-3 align-items-center">
						<div class="col-1">
							<div class="form-check pb-4">
								<input class="form-check-input w-100 text-center"
									type="checkbox" name="selectedUsers${ user.userid }" value="selected">
							</div>
						</div>
						<div class="col-2 col-lg-1">
							<img src="images/users-profiles/Christian-Ibarra.jpg"
								class="rounded w-100" id="users-profiles" alt="profile-picture">
						</div>
						<div class="col-6 col-lg-7 pt-2">
							<h6 class="mb-0">${ user.firstname } ${ user.lastname }</h6>
							<div class="dropdown">
								<button
									class="btn btn-transparent dropdown-toggle p-0 shadow-none"
									id="status" type="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span>${ user.status }</span> 
									<c:choose>
										<c:when test="${ user.status  == 'Active' }">
											<span class="badge badge-success rounded-circle pt-1"> </span>
										</c:when>
										<c:otherwise>
											<span class="badge badge-danger rounded-circle pt-1"> </span>
										</c:otherwise>
									</c:choose>
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#"> <span>Inactive</span> 
										<span class="badge badge-danger rounded-circle pt-1"> </span>
									</a>
									<a class="dropdown-item" href="#"> <span>Active</span> 
										<span class="badge badge-success rounded-circle pt-1"> </span>
									</a>
								</div>
							</div>
						</div>
						<div class="col-3">
							<div class="dropdown">
								<button
									class="btn btn-transparent dropdown-toggle p-0 shadow-none"
									id="role" type="button" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">
									<span>${ user.role }</span>
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item" href="#"> 
												<span>Administrator</span>
									</a>
									<a class="dropdown-item" href="#"> 
												<span>User</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>

