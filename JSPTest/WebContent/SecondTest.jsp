<% // jsp태그 @는 지시문: jsp컨테이너에게 메세지 보낼 때 사용 %>
<%@ page contentType="text/html; charset=euc-kr" %>
<% out.println("include 액션 호출 전 입니다.<br>"); %>
<!-- // 액션 태그 include: 현재 페이지에 다른 페이지를 포함 시킬 때 사용 -->
<jsp:include page="bottom.jsp" flush="false"/>
<% out.println("include 액현 호출 후입니다.<br>"); %>

<% // forward: 현재 페이지에서 다른 페이지로 제어를 옮길 때 사용. redirect() 메서드보다 속도가 빠르다 %>
<b>이제 bottom.jsp페이지로 이동</b>
<jsp:forward page="bottom.jsp"></jsp:forward>