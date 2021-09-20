<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>Banking System</title>
<style>
body {
	background-color: #ace1ab;
}
</style>
</head>
<body>
	<h1>Banking System</h1>
	<br />
	<h4>Current Client: ${user}</h4>
	<br />
	<h4>New User Created : ${newUser}</h4>
	<br />
	<br />

	<table>
		<tr>
			<td></td>
			<td><a href="/bankingsystem/welcome">Back to the Main Menu</a></td>
		</tr>
	</table>
</body>
</html>