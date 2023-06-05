<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Add contacts</title>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Cherry+Bomb+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap"
	rel="stylesheet">


<style>
body {
	font-family: 'Quicksand', sans-serif;
}
</style>

</head>
<body>


	<%@ include file="header.jsp"%>


	<div class="container">

		<div class="row my-4">
			<div class="col-md-10 mx-auto ">

				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Add Contact</h3>
					<div class="card-body bg-light">
						<c:if test="${infoMsg!=null}">
							<div class="alert alert-success" role="alert">${infoMsg}</div>
						</c:if>
						<c:if test="${errorMsg!=null}">
							<div class="alert alert-danger" role="alert">${errorMsg}</div>
						</c:if>

						<f:form action="addContact" method="POST"
							modelAttribute="contactModel">

							<div class="row mt-3">
								<div class="col mb-3">
									<label>Last Name </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Last Name" />
									<f:errors path="nom" class="text-danger" />
								</div>

								<div class="col mb-3">
									<label>First Name </label>
									<f:input path="prenom" type="text" class="form-control"
										placeholder="First Name" />
									<f:errors path="prenom" class="text-danger" />
								</div>
							</div>


							<div class="row">
								<div class="col  mb-3">
									<label>Mobile 1 </label>
									<f:input path="tel1" type="text" class="form-control"
										placeholder="Mobile 1" />
									<f:errors path="tel1" class="text-danger" />
								</div>

								<div class="col  mb-3">
									<label>Mobile 2 </label>
									<f:input path="tel2" type="text" class="form-control"
										placeholder="Mobile 2" />
									<f:errors path="tel2" class="text-danger" />
								</div>
							</div>


							<div class="row">
								<div class="col  mb-3">
									<label>Personal Email </label>
									<f:input path="email_perso" class="form-control"
										placeholder="Personal Email" />
									<f:errors path="email_perso" class="text-danger" />
								</div>

								<div class="col  mb-3">
									<label>Professional Email </label>
									<f:input path="email_pro" class="form-control"
										placeholder="Professional Email" />
									<f:errors path="email_pro" class="text-danger" />
								</div>
							</div>



							<div class="row">
								<div class="col  mb-3">
									<label>Address </label>
									<f:input path="adresse" type="text" class="form-control"
										placeholder="...., Morocco" />
									<f:errors path="adresse" class="text-danger" />
								</div>

								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Gender </legend>
										<div class="form-check form-check-inline">
											<f:radiobutton path="genre" class="form-check-input"
												value="Female" />
											<label class="form-check-label">Female </label>

										</div>
										<div class="form-check form-check-inline">
											<f:radiobutton path="genre" class="form-check-input"
												value="Male " />
											<label class="form-check-label">Male </label>
										</div>

									</fieldset>
									<f:errors path="genre" class="text-danger" />

								</div>
							</div>


							<div style="text-align: right" class="mt-3">
								<button type="submit" class="btn rounded-3 text-white fw-bold"
									style="background-color: #f35a14">Confirm</button>
								<button type="reset"
									class="btn btn-warning rounded-3 ms-2 fw-bold">Reset</button>
							</div>

						</f:form>
					</div>
				</div>
			</div>
		</div>
	</div>

	



</body>
</html>