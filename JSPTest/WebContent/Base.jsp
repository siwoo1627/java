<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
JSP 시작 - JSP 태그 내에 java 문법입력<br>
느낌표 !는 선언문<br>
<%!
	int a = 10;
	public int sum(){
		int a=10,b=20,c=30;
		return a+b+c;
	}
	int 숫자 = 10;
	// 선언문에서만 메서드 정의 가능하네, 아래에서 하면 에러남
	public String view(){
		return "출력테스트";
	}
	public String view2(String param){
		return param;
	}
%>
등호=는 표현식<br>
a의 값은 <%=a %><br>
method의 값은 <%=sum() %><br>
한글도 식별자로 사용가능! <%=숫자 %><br>
JSP스크립트 내에서는 자바 코드 입력가능<br>
1. System.out.println() : 이클립스 콘솔에 출력됨
2. out.println() : 웹 화면에 출력됨
<%
out.println("zxc<br>");
out.println("여기서는 자바 코드 입력 가능");
System.out.println("이건 콘솔임(웹에서 새로고침하면 나옴ㅋ)");
	out.println(view());
	view();	// 얘는 안나옴
%>

<%=view2("test") %><br>
=============================================<br>
<b>삼항 연산자(조건)</b>
<!-- JSP 파일 내에서 동일한 변수명을 두 번 선언하면 실제로 서블릿 클래스 내에서 동일한 필드명을 가지게 되는데, 이는 Java 컴파일러에서 오류로 처리됩니다. 
그래서 "Duplicate field" 오류가 발생하는 것입니다. -->
<%-- 얘는 개발자 도구에서 안보임 --%>
<%! int a2 = 10,b;  %>
<% b = a==20? 11 : 22; %>
<%= b %>



<%! 
	// 배열에 저장되 자료형 배열이름[]
	int num[] = new int[10];
	// 배열에 저장될 자료형[] 배열이름
	String[] str;
%>
<% str = new String[10];
String[] str2 = new String[]{"봄","여름","가을","겨울"};
for(int i=0;i<10;i++){
	num[i] = i;
}
// 배열을 노출하는 메서드
out.println(java.util.Arrays.toString(num));
out.println(java.util.Arrays.toString(str2));

%>

<br>
===================Test==========================<br>

<%
	for(int i=0;i<10;i++){
		for(int j=0;j<10;j++){
			if(j<=i){
				out.print("*");
			}
		}
		out.println("<br>");
	}
%>
=============================================<br>
<%
	String[][] str = {
			{"3(B)","5(A)","4(A)","4(A)","3(B)"},
			{"2(B)","5(A)","4(A)","4(A)","5(B)"},
			{"4(A)","4(A)","5(A)","2(B)","1(C)"}
	};
%>
<table border="1">
	<tr>
		<td>회</td>
		<td colspan="5">점수(등급)</td>
	</tr>
<%
	for(int i=0;i<str.length;i++){
	%>	
	<tr>
		<td><%= i+1 %>회전</td>
		<%for(int j=0; j<str[i].length;j++){ %>
			<td><%=str[i][j]%></td>
			<%}
		%></tr><%
	}
%>
</table>
=============================================<br>
<%!
public int sum1(){
	int total_sum = 0;
	for(int i=1;i<=100;i++){
		if(i%2 == 0){
			total_sum += i;
		}
	}
	return total_sum;
}
public int sum2(){
	int total_sum = 0;
	for(int i=1;i<=100;i++){
		if(i%2 == 1){
			total_sum += i;
		}
	}
	return total_sum;
}
%>
<table border = '1'>
	<tr >
		<td colspan='2' style="text-align:center">결과는...</td>
	</tr>
	<tr>
	<td>짝수의 합은<%=sum1() %>입니다.</td><td>홀수의 합은 <%=sum2() %>입니다.</td>
	</tr>

</table>
=============================================<br>
<%!
int first = 1;
int total = 1;
int index = 0;
int[] number = new int[9];
%>
<%

	do{
		first = first+1;
		total = total+first;
        if (first <= 10) {
            number[index] = total;
        }
		index++;
	}while(index<9);

java.util.ArrayList<Integer> results = new java.util.ArrayList<Integer>();

int total = 0;
for (int i = 1; i <= 10; i++) {
    total += i;
    results.add(total);
}


%>

    <h1>1에서 10까지 수를 계속해서 더한 합의 결과</h1>
    <ul>
        <% for (int result : results) { %>
            <li><%= result %></li>
        <% } %>
    </ul>

<table border = '1'>
	<tr >
		<td colspan='<%=number.length %>' style="text-align:center">결과는...</td>
	</tr>
	<tr>
	<%for(int i=0;i<number.length;i++){ %>
	<td><%=number[i] %></td>
	<%} %>
	</tr>
</table>
=============================================<br>
<%!  %>
<%
int[] 숫자열 = new int[]{1,2,3,4,5};

for(int i=숫자열.length-1;i>=0;i--){
	for(int j=0;j<숫자열.length;j++){
		if(i>=j){
		out.println(숫자열[j]);
		}
	}
	out.println("<br>");
}
%>

</body>
</html>