<%@ page contentType="text/html; charset=euc-kr" %>
<% out.println("bottom.jsp 페이지입니다.<br>"); %>

<b>이 페이지는 bottom.jsp 페이지입니다.</b>

<% // plugin: 자바 애플릿이나 자바 빈을 jsp에서 실행할 때 사용한다
//code: 클래스명, codebase: 클래스 파일의 경로 %>
<%-- <jsp:plugin code="" codebase="" type="bean"></jsp:plugin> --%>

<% // useBean: 자바빈즈를 사용할 때 자바빈즈 클래스 객체의 생성이나 생성된 객체를 사용하기 위한 태그
// id: 자바빈즈 객체들을 구별하기 위한 유일한 명칭
// class: 페이지 내에서 사용할 자바빈즈 클래스의 패키지명과 클래스명
// scope: 유효범위 및 사용범위 지정
// -page: 현재 페이지만, request: 요청과 응답이 이루어질 때 까지 객체 유지, 요청올 때마다 새로 객체 생성
// -session: 동일브라우저 상 세션이 유지되는 동안 객체 유지
// -application:  jsp 컨테이너(톰캣 등)를 재시작하기 전까지 유지 
%>
<%-- <jsp:useBean id="객체명" class="*" scope="객체유효범위"></jsp:useBean> --%>

<% // getProperty: 자바빈즈의 프로퍼티 값을 가져옴
// name: useBean에서 지정한 객체명을 지정
// property 속성: 호출하고자하는 getXXX()나 setXXX()를 소문자로 지정, 모든프로퍼티 지정은 *
%>
<%-- <jsp:setProperty property="속성" name="객체명"/> --%>
<% // setProperty: 자바빈즈 프로퍼티 값을 수정한다

%>
<%-- <jsp:setProperty property="속성" name="객체명"/> --%>