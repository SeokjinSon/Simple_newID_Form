<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>회원가입 완료</title>
</head>
<body>
	<%
		String[] hobby = request.getParameterValues("hobby");
	%>
	<h2>작성하신 내용은 아래와 같습니다.</h2><br/>
	이름 : ${param.name}<hr/>
	성별 : ${param.gender }<hr/>
	아이디 : ${param.id }<hr/>
	주소 : ${param.address }<hr/>
	전화번호 : ${param.phone }<hr/>
	이메일 주소 : ${param.email }<hr/>
	취미 : <br/>
	<%
		out.println("<table border=\"2\">");
		for(int i=0; i<hobby.length; i++) 
			out.println("<tr>" + "<td>" + hobby[i] + "</td>" + "</tr>");
		out.println("</table>");
	%>
</body>
</html>