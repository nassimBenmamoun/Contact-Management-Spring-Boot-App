<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Groupe</title>
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
			<div class="col-md-10 mx-auto">

				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Add Group</h3>
					<div class="card-body bg-light pt-4">
						<c:if test="${infoMsg!=null}">
							<div class="alert alert-success" role="alert">${infoMsg}</div>
						</c:if>
						<c:if test="${errorMsg!=null}">
							<div class="alert alert-danger" role="alert">${errorMsg}</div>
						</c:if>
						<f:form action="addGroupe" method="POST"
							modelAttribute="groupeModel">

							<div class="row">
								<div class="col mb-3">
									<label>Name </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Group Name" />
									<f:errors path="nom" class="text-danger" />
								</div>
							</div>

							<div class="row">
								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Contacts </legend>
										<div class="row ms-1">
											<c:forEach items="${contactList}" var="cl">
												<div class="form-check col-4">
													<f:checkbox path="contacts" value="${cl.id}"
														class="form-check-input" />
													<label class="form-check-label"><c:out
															value="${cl.nom} ${cl.prenom}" /></label>

												</div>
											</c:forEach>
										</div>
									</fieldset>
									<f:errors path="contacts" class="text-danger" />
								</div>
							</div>


							<div style="text-align: right">
								<button type="submit" class="btn rounded-3 text-white fw-bold"
									style="background-color: #f35a14">Confirm</button>
								<button type="reset" class="btn btn-warning rounded-3 ms-2 fw-bold">Reset</button>
							</div>

						</f:form>
					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>