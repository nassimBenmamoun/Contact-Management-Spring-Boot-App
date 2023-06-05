<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Update Groupe</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cherry+Bomb+One&display=swap" rel="stylesheet">
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
			<div class="col-md-10 mx-auto">
				
				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Update Group</h3>
					<div class="card-body bg-light pt-4">
						<f:form action="${pageContext.request.contextPath}/updateGroupe"
							method="POST" modelAttribute="groupeModel">
							<f:hidden path="id" />
							<div class="row">
								<div class="col mb-3">
									<label>Name </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Name" />
									<f:errors path="nom" class="text-danger" />
								</div>
							</div>

							<div class="row">
								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Contacts </legend>
										<div class="row ms-1">
											<c:forEach items="${contactList}" var="c">
												<div class="form-check col-4">
													<f:checkbox path="contacts" value="${c.id}"
														class="form-check-input"
														checked="${groupeModel.contacts.contains(c) ? true : ''}" />
													<label class="form-check-label"><c:out
															value="${c.nom} ${c.prenom}" /></label>

												</div>
											</c:forEach>
										</div>
									</fieldset>
									<f:errors path="contacts" class="text-danger" />
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