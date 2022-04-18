<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<body>
	
	<form:form action="processForm" modelAttribute="student">
	
		First name: <form:input path="firstName" />
		<br></br>
		
		Last name: <form:input path="lastName" />
		<br></br>
		
		Country:
		<form:select path="country">
			<form:options items="${student.countryOptions}"  />
		</form:select>
		<br></br>
		
		Java <form:radiobutton path="favoriteLanguage" value="Java" />	
		C <form:radiobutton path="favoriteLanguage" value="C" />		
		<br></br>
		
		Operating Systems:
		
		Linux <form:checkbox path="os" value="Linux" />
		Windows <form:checkbox path="os" value="Windows" />
		Mac <form:checkbox path="os" value="Mac" />
		<br></br>
		
		<input type="submit" value="Submit" />
	
	</form:form>
	
</body>

</html>