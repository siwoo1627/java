<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
JSP ���� - JSP �±� ���� java �����Է�<br>
����ǥ !�� ����<br>
<%!
	int a = 10;
	public int sum(){
		int a=10,b=20,c=30;
		return a+b+c;
	}
	int ���� = 10;
	// ���𹮿����� �޼��� ���� �����ϳ�, �Ʒ����� �ϸ� ������
	public String view(){
		return "����׽�Ʈ";
	}
	public String view2(String param){
		return param;
	}
%>
��ȣ=�� ǥ����<br>
a�� ���� <%=a %><br>
method�� ���� <%=sum() %><br>
�ѱ۵� �ĺ��ڷ� ��밡��! <%=���� %><br>
JSP��ũ��Ʈ �������� �ڹ� �ڵ� �Է°���<br>
1. System.out.println() : ��Ŭ���� �ֿܼ� ��µ�
2. out.println() : �� ȭ�鿡 ��µ�
<%
out.println("zxc<br>");
out.println("���⼭�� �ڹ� �ڵ� �Է� ����");
System.out.println("�̰� �ܼ���(������ ���ΰ�ħ�ϸ� ���Ȥ�)");
	out.println(view());
	view();	// ��� �ȳ���
%>

<%=view2("test") %><br>
=============================================<br>
<b>���� ������(����)</b>
<!-- JSP ���� ������ ������ �������� �� �� �����ϸ� ������ ���� Ŭ���� ������ ������ �ʵ���� ������ �Ǵµ�, �̴� Java �����Ϸ����� ������ ó���˴ϴ�. 
�׷��� "Duplicate field" ������ �߻��ϴ� ���Դϴ�. -->
<%-- ��� ������ �������� �Ⱥ��� --%>
<%! int a2 = 10,b;  %>
<% b = a==20? 11 : 22; %>
<%= b %>



<%! 
	// �迭�� ����� �ڷ��� �迭�̸�[]
	int num[] = new int[10];
	// �迭�� ����� �ڷ���[] �迭�̸�
	String[] str;
%>
<% str = new String[10];
String[] str2 = new String[]{"��","����","����","�ܿ�"};
for(int i=0;i<10;i++){
	num[i] = i;
}
// �迭�� �����ϴ� �޼���
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
		<td>ȸ</td>
		<td colspan="5">����(���)</td>
	</tr>
<%
	for(int i=0;i<str.length;i++){
	%>	
	<tr>
		<td><%= i+1 %>ȸ��</td>
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
		<td colspan='2' style="text-align:center">�����...</td>
	</tr>
	<tr>
	<td>¦���� ����<%=sum1() %>�Դϴ�.</td><td>Ȧ���� ���� <%=sum2() %>�Դϴ�.</td>
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

    <h1>1���� 10���� ���� ����ؼ� ���� ���� ���</h1>
    <ul>
        <% for (int result : results) { %>
            <li><%= result %></li>
        <% } %>
    </ul>

<table border = '1'>
	<tr >
		<td colspan='<%=number.length %>' style="text-align:center">�����...</td>
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
int[] ���ڿ� = new int[]{1,2,3,4,5};

for(int i=���ڿ�.length-1;i>=0;i--){
	for(int j=0;j<���ڿ�.length;j++){
		if(i>=j){
		out.println(���ڿ�[j]);
		}
	}
	out.println("<br>");
}
%>

</body>
</html>