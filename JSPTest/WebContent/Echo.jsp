<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="echoBean" scope="page" />
<jsp:setProperty name="echoBean" property="msg" />

<%
   String message = echoBean.getMsg();
   // 여기에서 "message" 변수를 사용하여 데이터 처리 또는 출력을 수행합니다.
%>
