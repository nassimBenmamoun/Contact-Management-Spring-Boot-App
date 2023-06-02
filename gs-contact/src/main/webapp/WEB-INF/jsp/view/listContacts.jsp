<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Manage contacts</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

</head>
<body>

	<%@ include file="header.jsp"%>
	<div class="container">

		<div class="row my-4">
			<div class="col">

				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Liste
						des Contacts</h3>
					<div class="card-body bg-light pt-4">

						<div
							class="d-flex flex-row justify-content-around align-items-center">
							<a
								href="${pageContext.request.contextPath}/showContactsOrderedByNom"><button
									class="btn rounded-pill mb-1 text-white"
									style="background-color: #b055ff">Order By Nom</button></a>
							<form
								action="${pageContext.request.contextPath}/searchContactByNom"
								class="d-flex flex-row mb-2" method="POST">
								<div class="input-group">
									<input name="nom"
										class="form-control form-control-md rounded-pill rounded-end"
										type="search" placeholder="Nom Contact" aria-label="Search">
									<button class="btn rounded-pill rounded-start" type="submit"
										style="background-color: #b055ff">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>

							<form
								action="${pageContext.request.contextPath}/searchContactByPhoneticNom"
								class="d-flex flex-row mb-2" method="POST">
								<div class="input-group">
									<input name="nom"
										class="form-control form-control-md rounded-pill rounded-end"
										type="search" placeholder="Phonetic Nom Contact"
										aria-label="Search">
									<button class="btn rounded-pill rounded-start" type="submit"
										style="background-color: #b055ff">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>

							<form
								action="${pageContext.request.contextPath}/searchContactByTel"
								class="d-flex flex-row mb-2" method="POST">
								<div class="input-group">
									<input name="tel"
										class="form-control form-control-md rounded-pill rounded-end"
										type="search" placeholder="Telephone" aria-label="Search">
									<button class="btn rounded-pill rounded-start" type="submit"
										style="background-color: #b055ff">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>
						</div>


						<div class="table-responsive mt-4">

							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Nom</th>
										<th scope="col">Prénom</th>
										<th scope="col">Télé 1</th>
										<th scope="col">Télé 2</th>
										<th scope="col">Email Personnel</th>
										<th scope="col">Email Professionnel</th>
										<th scope="col">Adresse</th>
										<th scope="col">Genre</th>
										<th scope="col">Actions</th>


									</tr>
								</thead>
								<c:forEach items="${contactList}" var="c">
									<tr>
										<td><c:out value="${c.nom}" /></td>
										<td><c:out value="${c.prenom}" /></td>
										<td><c:out value="${c.tel1}" /></td>
										<td><c:out value="${c.tel2}" /></td>
										<td><c:out value="${c.email_perso}" /></td>
										<td><c:out value="${c.email_pro}" /></td>
										<td><c:out value="${c.adresse}" /></td>
										<td><c:out value="${c.genre}" /></td>
										<td class="d-flex flex-row justify-content-around"><a
											href="updateContactForm/${c.id}"
											class="btn btn-sm rounded-pill text-white"
											style="background-color: #f67717"><i
												class="fa fa-edit me-2 text-white"></i>Update</a> <a
											href="deleteContact/${c.id}" class="btn btn-sm rounded-pill text-white"
											style="background-color: #881d2d"><i
												class="fa fa-trash me-2 text-white"></i>Delete</a></td>
									</tr>

								</c:forEach>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>