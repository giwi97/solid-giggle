<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload file response</title>
</head>
<body>
<%-- Using JSP EL to get message attribute value from request scope --%>
${table}
				<table class="table">
  					<thead>
    					<tr>
      						<th scope="col">Line no.</th>
      						<th scope="col">Program Statement</th>
      						<th scope="col">Nkw</th>
      						<th scope="col">Nid</th>
      						<th scope="col">Nop</th>
      						<th scope="col">Nnv</th>
      						<th scope="col">Nsl</th>
      						<th scope="col">Cs</th>
    						</tr>
  					</thead>
  					<tbody>
    					<tr>
      						<td>${requestScope.lineNo}</td>
      						<td>${requestScope.lineS}</td>
      						<td>${requestScope.Nkw}</td>
      						<td>${requestScope.Nid}</td>
      						<td>${requestScope.Nop}</td>
      						<td>${requestScope.Nnv}</td>
      						<td>${requestScope.Nsl}</td>
      						<td>1</td>
    					</tr>
					</tbody>
				</table>
</body>
</html>