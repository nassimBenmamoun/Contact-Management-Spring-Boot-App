<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Update Contact</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<style>
#navbarNav div {
	height: 0;
}

#navbarNav form {
	margin: 0;
	padding: 0;
}

form {
	margin-bottom: 60px;
	margin-top: 10px;
	padding: 10px;
}
</style>

</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-light navbar-dark bg-primary px-3">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/showForm"> <i
				class="fas fa-mobile" style="color: #ffffff"></i> <span
				class="fw-bold">CM</span>
			</a>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarSupportedContent">
				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showForm">Add Contact
					</a></li>


					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/manageContacts">Manage
							Contacts </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showFormGroupe">Add
							Groupe </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/manageGroupes">Manage
							Groupes </a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">

		<div class="row my-4">
			<div class="col-md-10 mx-auto">

				<div class="card">
					<h3 class="card-header text-center">Modifier un Contact</h3>
					<div class="card-body bg-light">

						<f:form action="${pageContext.request.contextPath}/updateContact"
							method="POST" modelAttribute="contactModel">
							<f:hidden path="id" />
							<div class="row mt-3">
								<div class="col mb-3">
									<label>Nom* </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Nom" />
									<f:errors path="nom" class="text-danger" />
								</div>

								<div class="col mb-3">
									<label>Prénom* </label>
									<f:input path="prenom" type="text" class="form-control"
										placeholder="Prénom" />
									<f:errors path="prenom" class="text-danger" />
								</div>
							</div>


							<div class="row">
								<div class="col mb-3">
									<label>Téléphone 1* </label>
									<f:input path="tel1" type="text" class="form-control"
										placeholder="Téléphone 1" />
									<f:errors path="tel1" class="text-danger" />
								</div>

								<div class="col mb-3">
									<label>Téléphone 2* </label>
									<f:input path="tel2" type="text" class="form-control"
										placeholder="Téléphone 2" />
									<f:errors path="tel2" class="text-danger" />
								</div>
							</div>


							<div class="row">
								<div class="col mb-3">
									<label>Email Personnel* </label>
									<f:input path="email_perso" class="form-control"
										placeholder="Email Personnel" />
									<f:errors path="email_perso" class="text-danger" />
								</div>

								<div class="col mb-3">
									<label>Email Professionnel* </label>
									<f:input path="email_pro" class="form-control"
										placeholder="Email Professionnel" />
									<f:errors path="email_pro" class="text-danger" />
								</div>
							</div>



							<div class="row">
								<div class="col mb-3">
									<label>Adresse* </label>
									<f:input path="adresse" type="text" class="form-control"
										placeholder="...., Morocco" />
									<f:errors path="adresse" class="text-danger" />
								</div>

								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Genre* </legend>
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


							<div style="text-align: right">
								<button type="submit" class="btn btn-primary">Confirm</button>
								<button type="reset" class="btn btn-secondary">Reset</button>
							</div>

						</f:form>
					</div>
				</div>
			</div>
		</div>

	</div>



</body>
</html>