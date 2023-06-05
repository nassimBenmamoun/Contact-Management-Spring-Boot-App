<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>List of groupes</title>
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
					<h3 class="card-header text-center display-6 fw-normal">List of Groups</h3>
					<div class="card-body bg-light pt-4">

						
							<form
								action="${pageContext.request.contextPath}/searchGroupeByNom"
								class="d-flex flex-row mb-2" method="POST">
								<div
									class="input-group w-50 mx-auto">
									<input name="nom" class="form-control form-control-md"
										type="search" placeholder="Group Name" aria-label="Search">
									<button class="btn btn-md" type="submit"
										style="background-color: #f35a14">
										<i class="fas fa-search text-white"></i>
									</button>
								</div>
							</form>
						

						<div class="table-responsive mt-4">
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Name</th>
										<th scope="col">Contacts</th>
										<th scope="col">Actions</th>
									</tr>
								</thead>
								<c:forEach items="${groupeList}" var="g">
									<tr>
										<td><c:out value="${g.nom}" /></td>
										<td>
											<ul class="list-group list-group-flush">
												<c:forEach items="${g.contacts}" var="c">
													<li class="list-group-item bg-light border-light"><c:out
															value="${c.nom} ${c.prenom}" /></li>
												</c:forEach>
											</ul>
										</td>
										<td><a href="updateGroupeForm/${g.id}"
											class="btn btn-warning btn-sm rounded-3 me-3 fw-bold"><i
												class="fa fa-edit me-2 fw-bold"></i>Update</a> <a
											href="deleteGroupe/${g.id}"
											class="btn btn-danger btn-sm rounded-3 text-white fw-bold"><i
												class="fa fa-trash me-2 text-white fw-bold"></i>Delete</a></td>
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