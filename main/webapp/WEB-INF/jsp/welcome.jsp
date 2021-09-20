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
	<br />
	<br />
	<table>
		<tr>
			<td></td>
			<td><a href="/bankingsystem/createAccount">Create Account</a></td>
		</tr>
		<tr>
			<td></td>
			<td><a href="/bankingsystem/transaction">Transaction</a></td>
		</tr>
		<tr>
			<td></td>
			<td><a href="/bankingsystem/displayStatement">Display
					Statement</a></td>
		</tr>
		<tr>
			<td></td>
			<td><a href="/bankingsystem/authCreditCard">Authorize Credit
					Card</a></td>
		</tr>
		<tr />
	</table>

	<br />
	<a href="/bankingsystem/LogOut">Log Out</a>

</body>
</html>