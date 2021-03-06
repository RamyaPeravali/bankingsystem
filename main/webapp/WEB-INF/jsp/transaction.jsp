<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Project JEE SOA</title>

<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}

body {
	background-color: #ace1ab;
}

h3 {
	color: red;
}

h2 {
	color: green;
}
</style>

</head>
<body>

	<h1>Perform Debit or Credit operation</h1>
	<br />
	<h4>Current Client: ${user}</h4>
	<table>
		<tr>
			<td>|</td>
			<td><a href="/bankingsystem/LogOut">Log Out</a></td>
			<td>|</td>
			<td><a href="/bankingsystem/welcome">welcome</a></td>
		</tr>
	</table>
	<br />
	<br />
	<br />

	<form:form modelAttribute="trsc" commandName="trsc" method="POST"
		action="/bankingsystem/execTransaction">
		<form:errors path="*" cssClass="errorblock" element="div" />
		<table>
			<tr>
				<td><form:label path="accountNumber">Account Number: </form:label></td>
				<td><form:input path="accountNumber" /></td>
				<td><form:errors path="accountNumber" cssClass="error" />
					<div class="error">${Not_Valid_Account}</div></td>
			</tr>
			<tr>
				<td><form:label path="amount">Amount </form:label></td>
				<td><form:input path="amount" /></td>
				<td><form:errors path="amount" cssClass="error" /></td>
			</tr>

			<tr>
				<td><input type="submit" name="action" value="Debit From" /></td>
				<td colspan="2"><input type="submit" name="action"
					value="Credit To" /></td>
			</tr>

		</table>
	</form:form>

	<h3>${statusMessage}</h3>
	<h2>${status_message}</h2>

</body>
</html>