<% // jsp�±� @�� ���ù�: jsp�����̳ʿ��� �޼��� ���� �� ��� %>
<%@ page contentType="text/html; charset=euc-kr" %>
<% out.println("include �׼� ȣ�� �� �Դϴ�.<br>"); %>
<!-- // �׼� �±� include: ���� �������� �ٸ� �������� ���� ��ų �� ��� -->
<jsp:include page="bottom.jsp" flush="false"/>
<% out.println("include ���� ȣ�� ���Դϴ�.<br>"); %>

<% // forward: ���� ���������� �ٸ� �������� ��� �ű� �� ���. redirect() �޼��庸�� �ӵ��� ������ %>
<b>���� bottom.jsp�������� �̵�</b>
<jsp:forward page="bottom.jsp"></jsp:forward>