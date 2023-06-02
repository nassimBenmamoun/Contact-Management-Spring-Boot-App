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


</head>
<body>

	<%@ include file="header.jsp" %>
	
	<div class="container">

		<div class="row my-4">
			<div class="col-md-10 mx-auto">

				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Modifier un Contact</h3>
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
								<button type="submit" class="btn rounded-pill text-white" style="background-color: #b055ff">Confirm</button>
								<button type="reset" class="btn btn-secondary rounded-pill">Reset</button>
							</div>

						</f:form>
					</div>
				</div>
			</div>
		</div>

	</div>



</body>
</html>