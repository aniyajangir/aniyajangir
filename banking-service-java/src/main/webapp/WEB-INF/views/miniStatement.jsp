
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MiniStatement Form</title>
<s:url var="h_data" value="/resource/css/style1.css"></s:url>
<link rel="stylesheet" href="${h_data}">
</head>
<body style="background-color: white">
	<!-- HTML Code: Place this code in the document's body (between the 'body' tags) where the table should appear -->

	<div height="10px"><jsp:include page="include/header.jsp"></jsp:include></div>


	<div height="60px" style="background-color: #1b4d3e; padding: 20px;"
		align="right">
		<a class="menu" href="index">Home</a> <a class="menu"> | </a> <a
			class="menu" href="aboutUs">About</a><a
			class="menu"> | </a> <a class="menu" href="logoutUser">logout</a>
	</div>


	<div align="center" style="padding: 50px;">
		<div align="center" style="padding: 20px">
			<h1>MiniStatement Form</h1>
		</div>

	<f:form action="successStatement"
						modelAttribute="TransactionsDTO">

						<table class="table">
							<tr>
								<c:if test="${message!=null}">
									<p>${message}</p>
								</c:if>
								<c:if test="${err!=null}">
									<p style="color: red">${err}</p>
								</c:if>
							</tr>
							<tr>
							<tr>
								<td>Account Number</td>
								<td><f:input path="fromAccountNumber"  required="required" pattern="^[0-9]*$"/></td>
							</tr>
							<td ><a ><button class="button"
						type="submit" value="Submit" ><span>Submit</span> </button></a>
						</td>
						</table>

					</f:form>


	</div>
	<br><br><br><br><br><br><br><br><br>
	<div align="center">
		<%--Footer --%>
		<jsp:include page="include/footer.jsp"></jsp:include>
	</div>
</body>
</html>