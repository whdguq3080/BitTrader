<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/head.jsp"/>    
<body>
<table id="wrapper">
	<tr>
		<jsp:include page="../home/header.jsp"/>
	</tr>
	<tr>
		<td colspan="2">
			<jsp:include page="../home/post-navi-bar.jsp"/>
		</td>
	</tr>
	<tr  style="height: 300px">
		<td style="width: 30%">
			<jsp:include page="side-menu.jsp"/>
		</td>
		<td>
		<c:choose>
			<c:when test="${dest eq 'NONE' && dest eq 'account-detail'}">
				<jsp:include page="account-detail.jsp"/>
			</c:when>
			<c:when test="${dest eq 'open-form'}">
				<jsp:include page="open-form.jsp"/>
			</c:when>
			<c:when test="${dest eq 'open-result'}">
				<jsp:include page="open-result.jsp"/>
			</c:when>
		</c:choose>
		</td>
	</tr>
	<tr>
		<td colspan="2">
		<jsp:include page="../home/footer.jsp"/>
		</td>
	</tr>
</table>
</body>
</html>