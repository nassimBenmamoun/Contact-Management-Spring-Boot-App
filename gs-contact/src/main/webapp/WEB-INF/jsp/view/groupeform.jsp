<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Groupe</title>
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
				<c:if test="${infoMsg!=null}">
					<div class="alert alert-success" role="alert">${infoMsg}</div>
				</c:if>
				<c:if test="${errorMsg!=null}">
					<div class="alert alert-danger" role="alert">${errorMsg}</div>
				</c:if>
				<div class="card">
					<h3 class="card-header text-center">Ajouter un Groupe</h3>
					<div class="card-body bg-light">
						<f:form action="addGroupe" method="POST"
							modelAttribute="groupeModel">

							<div class="row">
								<div class="col mb-3">
									<label>Nom </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Nom" />
									<f:errors path="nom" class="text-danger" />
								</div>
							</div>

							<div class="row">
								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Contacts</legend>
										<c:forEach items="${contactList}" var="cl">
											<div class="form-check">
												<f:checkbox path="contacts" value="${cl.id}"
													class="form-check-input" />
												<label class="form-check-label"><c:out
														value="${cl.nom} ${cl.prenom}" /></label>

											</div>
										</c:forEach>
									</fieldset>
									<f:errors path="contacts" class="text-danger" />
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