<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="/WEB-INF/include/head.jsp" />

<body>
	<jsp:include page="/WEB-INF/include/header.jsp" />
	
	<div id=pageHeader class="container-fluid p-2 bg-primary text-white text-center">
		<h2>User Profile</h2>
	</div>
	
	<div id=main class="container-fluid">
		<div class="row mt-3">
				<div class="col">
				</div> <!-- end col -->
				<div class="col-sm-7">
					<c:if test="${validationErrorMsg != null}">
				        <div class="alert alert-danger" role="alert">
				        	${validationErrorMsg}
				        </div>
				    </c:if>
					<div id="profileCard" class="card p-3 d-md-flex justify-content-start">
						<div class="d-flex justify-content-between">
							<div class="card mb-3 p-2 border-0">
								<p class="m-0 text-secondary" style="font-size: 0.8rem;">
									Joined
	<%-- 
									<fmt:formatDate value="${userProfile.createdAt}" pattern="EEEE"/>,
									<fmt:formatDate value="${userProfile.createdAt}" pattern="MMMM dd"/>
									, 
									<fmt:formatDate value="${userProfile.createdAt}" pattern="yyyy"/>, 
									<fmt:formatDate value="${userProfile.createdAt}" pattern="h:mm a"/>
	 --%>							
	 							</p>
							</div>
							<div>
								<a href="/profile/${userProfileAsis.id}"><button class="btn btn-secondary">Cancel</button></a>
							</div>
						</div>
					
						<form:form action='/profile/edit' method='post' modelAttribute='userProfileTobe'>
						
							<div class="form-floating mb-3">
								<%-- JRF: added value="${userProfileAsis.... for each field --%>
								<form:input value="${userProfileAsis.userName}" path="userName" type="text" class="form-control" id="floatingUserName" placeholder="userName"/>
								<form:label path="userName" for="floatingUserName">userName</form:label>
								<p class="text-danger"><form:errors path="userName" />
							</div>
							
							<div class="form-floating mb-3">
								<form:input value="${userProfileAsis.email}" path="email" type="email" class="form-control" id="floatingEmail" placeholder="name@example.com"/>
								<form:label path="email" for="floatingEmail">Email</form:label>
								<p class="text-danger"><form:errors path="email" />
							</div>
							
							<div class="form-floating mb-3">
								<form:input value="${userProfileAsis.firstName}" path="firstName" type="text" class="form-control" id="floatingfirstName" placeholder="firstName"/>
								<form:label path="firstName" for="floatingfirstName">firstName</form:label>
								<p class="text-danger"><form:errors path="firstName" />
							</div>
							<div class="form-floating mb-3">
								<form:input value="${userProfileAsis.lastName}" path="lastName" type="text" class="form-control" id="floatinglastName" placeholder="lastName"/>
								<form:label path="lastName" for="floatinglastName">lastName</form:label>
								<p class="text-danger"><form:errors path="lastName" />
							</div>
							
		<%-- 					<div class="form-floating mb-3">
								<form:input path="addressLineOne" type="text" class="form-control" id="floatingaddressLineOne" placeholder="addressLineOne"/>
								<form:label path="addressLineOne" for="floatingaddressLineOne">addressLineOne</form:label>
								<p class="text-danger"><form:errors path="addressLineOne" />
							</div>
							<div class="form-floating mb-3">
								<form:input path="addressLineTwo" type="text" class="form-control" id="floatingaddressLineTwo" placeholder="addressLineTwo"/>
								<form:label path="addressLineTwo" for="floatingaddressLineTwo">addressLineTwo</form:label>
								<p class="text-danger"><form:errors path="addressLineTwo" />
							</div>
							<div class="form-floating mb-3">
								<form:input path="city" type="text" class="form-control" id="floatingcity" placeholder="city"/>
								<form:label path="city" for="floatingcity">city</form:label>
								<p class="text-danger"><form:errors path="city" />
							</div>
							<div class="form-floating mb-3">
								<form:input path="state" type="text" class="form-control" id="floatingstate" placeholder="state"/>
								<form:label path="state" for="floatingstate">state</form:label>
								<p class="text-danger"><form:errors path="state" />
							</div>
							<div class="form-floating mb-3">
								<form:input path="zipCode" type="email" class="form-control" id="floatingzipCode" placeholder="zipCode"/>
								<form:label path="zipCode" for="floatingzipCode">zipCode</form:label>
								<p class="text-danger"><form:errors path="zipCode" />
							</div> --%>
							
							<div>
								<button type="submit" class="btn btn-primary w-100">Update</button>
							</div>
						</form:form>
			
						
					</div> <!-- end profileCard -->
				</div> <!-- end col -->
				<div class="col">
				</div> <!-- end col -->
			</div> <!-- end row -->
		</div> <!-- end main -->
 
 	<jsp:include page="/WEB-INF/include/footerbuffer.jsp"/>
 	<jsp:include page="/WEB-INF/include/footer.jsp"/>
</body>
</html>