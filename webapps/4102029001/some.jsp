<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body {
    background-image: url("https://s-media-cache-ak0.pinimg.com/originals/43/e9/2e/43e92e40839e36ad3dbee2c69dbe5731.jpg");
}
div {
	margin-top:90px; 
	margin-left:auto; 
	margin-right:auto; 
	margin-bottom:auto; 
    border: 5px  dashed #FFAC55;
	padding: 5px;
    width: 30%;
	text-align:center;
   }
</style>
</head>
<body>
<div>
<% 
request.setCharacterEncoding("utf8");
//String Name = new String(request.getParameter("usrname").getBytes("ISO-8859-1"), "UTF-8");
out.print("名字:  "+ request.getParameter("usrname") +"<br/>");
String sex = request.getParameter("g");
if (sex==null){
	sex = "on(你沒選性別)";
}
out.print("性別:  "+sex+"<br/>");
out.print("學歷:  "+request.getParameter("edu")+"<br/>");

out.print("興趣:  ");
if (request.getParameterValues("lbxBook")==null){
	out.println("none"); 
}else{
String[] shit = request.getParameterValues("lbxBook");
for(int i=0;i<shit.length;i++){
	out.print(shit[i]);
	if(i<shit.length-1){
		out.println("; ");
	}
	}
}
out.print("<br/>");
out.print("languaue:  ");

if (request.getParameterValues("langtype")==null){
	out.println("none"); 
}else{
	String[] lang = request.getParameterValues("langtype");
	for(int i=0;i<lang.length;i++){
		out.println(lang[i]); 
		if(i<lang.length-1){
			out.println("; ");
		}
		}
}
out.print("<br/>");
out.print("自傳:  "+request.getParameter("textarea")+"<br/>");
%>
</div>
</body>
</html>