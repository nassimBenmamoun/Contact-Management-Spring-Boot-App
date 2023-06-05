<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Manage contacts</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Cherry+Bomb+One&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
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
			<div class="col">

				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">List of Contacts</h3>
					<div class="card-body bg-light pt-4">

						<div
							class="d-flex flex-row justify-content-around align-items-center">
							<a
								href="${pageContext.request.contextPath}/showContactsOrderedByNom"><button
									class="btn rounded-3 mb-1 text-white fw-bold"
									style="background-color: #f35a14">Order By Last Name</button></a>
							<form
								action="${pageContext.request.contextPath}/searchContactByNom"
								class="d-flex flex-row mb-2" method="POST">
								<div class="input-group">
									<input name="nom"
										class="form-control form-control-md"
										type="search" placeholder="Last Name" aria-label="Search">
									<button class="btn" type="submit"
										style="background-color: #f35a14">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>

						

							<form
								action="${pageContext.request.contextPath}/searchContactByTel"
								class="d-flex flex-row mb-2" method="POST">
								<div class="input-group">
									<input name="tel"
										class="form-control form-control-md"
										type="search" placeholder="Mobile" aria-label="Search">
									<button class="btn" type="submit"
										style="background-color: #f35a14">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>
						</div>


						<div class="table-responsive mt-4">

							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col">Last Name</th>
										<th scope="col">First Name</th>
										<th scope="col">Mobile 1</th>
										<th scope="col">Mobile 2</th>
										<th scope="col">Personal Email</th>
										<th scope="col">Professional Email</th>
										<th scope="col">Address</th>
										<th scope="col">Gender</th>
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
											class="btn btn-sm btn-warning rounded-3 me-2 fw-bold"
											><i
												class="fa fa-edit me-2 fw-bold"></i>Update</a> <a
											href="deleteContact/${c.id}"
											class="btn btn-sm btn-danger rounded-3 text-white fw-bold"
											><i
												class="fa fa-trash me-2 fw-bold"></i>Delete</a></td>
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