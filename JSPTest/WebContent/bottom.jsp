<%@ page contentType="text/html; charset=euc-kr" %>
<% out.println("bottom.jsp �������Դϴ�.<br>"); %>

<b>�� �������� bottom.jsp �������Դϴ�.</b>

<% // plugin: �ڹ� ���ø��̳� �ڹ� ���� jsp���� ������ �� ����Ѵ�
//code: Ŭ������, codebase: Ŭ���� ������ ��� %>
<%-- <jsp:plugin code="" codebase="" type="bean"></jsp:plugin> --%>

<% // useBean: �ڹٺ�� ����� �� �ڹٺ��� Ŭ���� ��ü�� �����̳� ������ ��ü�� ����ϱ� ���� �±�
// id: �ڹٺ��� ��ü���� �����ϱ� ���� ������ ��Ī
// class: ������ ������ ����� �ڹٺ��� Ŭ������ ��Ű����� Ŭ������
// scope: ��ȿ���� �� ������ ����
// -page: ���� ��������, request: ��û�� ������ �̷���� �� ���� ��ü ����, ��û�� ������ ���� ��ü ����
// -session: ���Ϻ����� �� ������ �����Ǵ� ���� ��ü ����
// -application:  jsp �����̳�(��Ĺ ��)�� ������ϱ� ������ ���� 
%>
<%-- <jsp:useBean id="��ü��" class="*" scope="��ü��ȿ����"></jsp:useBean> --%>

<% // getProperty: �ڹٺ����� ������Ƽ ���� ������
// name: useBean���� ������ ��ü���� ����
// property �Ӽ�: ȣ���ϰ����ϴ� getXXX()�� setXXX()�� �ҹ��ڷ� ����, ���������Ƽ ������ *
%>
<%-- <jsp:setProperty property="�Ӽ�" name="��ü��"/> --%>
<% // setProperty: �ڹٺ��� ������Ƽ ���� �����Ѵ�

%>
<%-- <jsp:setProperty property="�Ӽ�" name="��ü��"/> --%>