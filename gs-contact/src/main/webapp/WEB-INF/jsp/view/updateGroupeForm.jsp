<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>Update Groupe</title>
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
			<div class="col-md-10 mx-auto">
				<c:if test="${infoMsg!=null}">
					<div class="alert alert-success" role="alert">${infoMsg}</div>
				</c:if>
				<c:if test="${errorMsg!=null}">
					<div class="alert alert-danger" role="alert">${errorMsg}</div>
				</c:if>
				<div class="card rounded-3 shadow-lg">
					<h3 class="card-header text-center display-6 fw-normal">Modifier
						un Groupe</h3>
					<div class="card-body bg-light pt-4">
						<f:form action="${pageContext.request.contextPath}/updateGroupe"
							method="POST" modelAttribute="groupeModel">
							<f:hidden path="id" />
							<div class="row">
								<div class="col mb-3">
									<label>Nom* </label>
									<f:input path="nom" type="text" class="form-control"
										placeholder="Nom" />
									<f:errors path="nom" class="text-danger" />
								</div>
							</div>

							<div class="row">
								<div class="col mb-3">
									<fieldset class="form-group">
										<legend class="col-form-label">Contacts* </legend>
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


							<div style="text-align: right">
								<button type="submit" class="btn rounded-pill text-white"
									style="background-color: #b055ff">Confirm</button>
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