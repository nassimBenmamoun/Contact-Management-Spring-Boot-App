<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Groupe form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<style>
h3 {
	margin-top: 20px;
}

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
	<div class="container">

		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">

					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="${pageContext.request.contextPath}/showForm">Home</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showForm">Add
							Contacts </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showContactsOrderedByNom">Order By Name
							</a></li>


					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/manageContacts">Manage
							Contacts </a></li>
							
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showFormGroupe">Add Groupe </a></li>

					<li class="nav-item"><form
							action="${pageContext.request.contextPath}/searchContactByNom"
							class="d-flex" method="POST">
							<input name="nom" class="form-control me-2" type="search"
								placeholder="Nom" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form></li>

					<li class="nav-item"><form
							action="${pageContext.request.contextPath}/searchContactByTel"
							class="d-flex" method="POST">
							<input name="tel" class="form-control me-2" type="search"
								placeholder="Telephone" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form></li>


				</ul>



			</div>


		</nav>



		<div>
			<h3>Groupe Form</h3>
		</div>
		<div>

			<c:if test="${infoMsg!=null}">
				<div class="alert alert-success" role="alert">${infoMsg}</div>
			</c:if>
			<c:if test="${errorMsg!=null}">
				<div class="alert alert-danger" role="alert">${errorMsg}</div>
			</c:if>

			<f:form action="addGroupe" method="POST"
				modelAttribute="groupeModel">

				<div class="row">
					<div class="col">
						<label>Nom </label>
						<f:input path="nom" type="text" class="form-control"
							placeholder="Nom" />
						<f:errors path="nom" class="text-danger" />
					</div>
				</div>
				
				<div class="row">
					<div class="col">
						<legend class="col-form-label col-sm-2 pt-0">Contacts</legend>
						<c:forEach items="${contactList}" var="cl">
						<div class="form-check">
							<f:checkbox path="contacts" value="${cl.id}"
								class="form-check-input" />
							<label class="form-check-label"><c:out value="${cl.nom} ${cl.prenom}" /></label>

						</div>
						</c:forEach>

						<f:errors path="contacts" class="text-danger" />
					</div>
				</div>


				<div style="text-align: right">
					<button type="submit" class="btn btn-primary">Add groupe</button>
					<button type="reset" class="btn btn-secondary">Reset</button>
				</div>

			</f:form>
		</div>


	</div>
</body>
</html>