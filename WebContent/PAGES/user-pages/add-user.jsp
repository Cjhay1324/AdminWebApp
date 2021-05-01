<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row row-cols-2 mt-3">
	<div class="container">
		<h3>Add User</h3>
	</div>
	<div class="container text-right">
		<button type="button" class="btn btn-success" title="Save" onclick="onClickMenu('Save')">
			<i class="fas fa-save"></i>
		</button>
		<button type="button" class="btn btn-danger" title="Cancel" onclick="onClickMenu('Users')">
			<i class="fas fa-arrow-alt-circle-left"></i>
		</button>
	</div>
</div>
<div class="container table-responsive-xl w-100">
	<div class="my-3" id="registration-form">
		<fieldset>
<!-- 			<legend style="font-size:15px">Personal Info</legend> -->
			<div class="row m-2">
				<div class="col">
					<label for="first-name" hidden>First Name:</label>
					<input type="text" name="first-name" id="first-name" placeholder="First Name">
				</div>
				<div class="col">
					<label for="middle-name" hidden>Middle Name:</label>
					<input type="text" name="middle-name" id="middle-name" placeholder="Middle Name">
				</div>
				<div class="col">
					<label for="last-name" hidden>Last Name:</label>
					<input type="text" name="last-name" id="last-name" placeholder="Last Name">
				</div>
			</div>
		</fieldset>
		<fieldset>
<!-- 			<legend style="font-size:15px">Contact Details</legend> -->
			<div class="row m-2">
				<div class="col-6">
					<label for="email" hidden>Email Address:</label>
					<input type="text" name="email" id="email" placeholder="Email Address">
				</div>
				<div class="col-3">
					<label for="phone-number" hidden>Phone Number:</label>
					<input type="text" name="phone-number" id="phone-number" placeholder="Phone Number">
				</div>
				<div class="col-3">
					<select id="select-user-role">
						<option value="" selected>Role</option>
						<option value="Administrator">Administrator</option>
						<option value="User">User</option>
					</select>
				</div>
			</div>
		</fieldset>
		<fieldset>
<!-- 			<legend style="font-size:15px">Credentials</legend> -->
			<div class="row m-2">
					<div class="col-6 p-2">
						<div class="row m-2">
							<label for="username" hidden>Username:</label>
							<input type="text" name="username" id="username" placeholder="Username">	
						</div>
						<div class="row m-2">
							<label for="password" hidden>Password:</label>
							<input type="text" name="password" id="password" placeholder="Password">
						</div>
						<div class="row m-2">
							<label for="confirm-password" hidden>Confirm Password:</label>
							<input type="text" name="confirm-password" id="confirm-password" placeholder="Confirm Password">
						</div>
					</div>
				<div class="col-6">
					<label for="" hidden>Upload Image:</label>
					<button type="button" class="btn h-75 w-100" name="upload-profile-img" id="upload-profile-img">
						<label>Upload Profile Picture</label>
						<img src="images/users-profiles/anonymous-img.jpg" class="img-thumbnail h-75 w-100" alt="Anonymous-Img">
					</button>
				</div>
			</div>
		</fieldset>
	</div>
</div>
