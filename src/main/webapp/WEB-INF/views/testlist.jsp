<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.example.demo.dto.testLowDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testlist</title>
</head>
<body>
<p><b>Spring Boot List Page(Test).!!!</b></p>
<%
	System.out.println("testlist.. jsp log.."); 
%>
<table>
<tr>
	<td style="width:50px;text-align:center;">순서</td>
	<td style="width:100px;text-align:center;">그룹ID</td>
	<td style="width:100px;text-align:center;">컬럼1</td>
	<td style="width:100px;text-align:center;">컬럼2</td>
	<td style="width:100px;text-align:center;">컬럼3</td>
</tr>
<%
List<testLowDto> list=(List<testLowDto>)request.getAttribute("testlist");
for(int i=0; i < list.size();i++) {
	testLowDto dto=(testLowDto)list.get(i);
%>
<tr>
	<td style="text-align:right;padding-right:10px;">
	 <%=String.valueOf(i+1)%>
	</td>
	<td style="text-align:center;"> 
	<%=dto.getGrp_id()%>
	</td>
	<td style="text-align:center;">
	<%=dto.getCol1()%>
	</td>
	<td style="text-align:center;">
	<%=dto.getCol2()%>
	</td>
	<td style="text-align:center;">
	<%=dto.getCol3()%>
	</td>
</tr>
<%
}
%>
</table>
</body>
</html>