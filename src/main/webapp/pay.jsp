<%@ page language="java" contentType="text/html; charset=GB2312"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
    <title>Insert title here</title>
</head>
<body>
<p>��֧��
    <%
        try {
            double totall = (Double) session.getAttribute("qtotal");
            out.print(totall);
        } catch (Exception e) {

        }
    %>Ԫ����ѡ��֧����ʽ</p>
<table width="500" border="0" cellspacing="5" sckkpadding="5">
    <tbody>
    <tr>
        <td align="center">֧����</td>
        <td align="center">΢��</td>
    </tr>
    <tr>
        <td align="center"><img src="image/pay/alipay.jpg" alt="center" width="75%" height="75%"></td>
        <td align="center"><img src="image/pay/weichatpay.jpg" alt="center" width="75%" height="75%"></td>
    </tr>
    <tr>
        <td align="center">
            <form action="productdisplay.jsp" id="form1" name="form1" method="post">
                <input type="submit" name="submit" id="submit" value="��������">
            </form>
        </td>
        <td align="center">
            <form action="feedback.jsp" id="form1" name="form1" method="post">
                <input type="submit" name="submit" id="submit" value="���۷���">
            </form>
        </td>
    </tr>
    </tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>