<%@ page language="java" contentType="text/html; charset=gb2312"
         import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>评价反馈</title>
</head>
<%
    request.setCharacterEncoding("gb2312");
    String xxfk = request.getParameter("xxfk");
    String fkzs = request.getParameter("fkzs");
    String fkxx = request.getParameter("fkxx");
    String pxjf = request.getParameter("pxjf");
    String xj = request.getParameter("xj");

    String s = fkxx + ":";
    String s2 = "";
    String sxj = xj + ":";
    String totaljf = "";
    int itotal = 0;
    if (xxfk != null) {
        s2 = (String) session.getAttribute("qs2");
        if (s2 == null) {
            s2 = s;
        } else {
            s2 += s;
        }

        session.setAttribute("qs2", s2);
    } else if (pxjf != null) {
        totaljf = (String) session.getAttribute("qtotaljf");
        if (totaljf == null) {
            totaljf = sxj;
        } else {
            totaljf += sxj;
        }
        session.setAttribute("qtotaljf", totaljf);

    }
%>
<body>
<p>请对本次选购体验加以描述。</p>
<table width="350" border="0" cellspacing="5" cellpadding="5">
    <tbody>
    <tr>
        <td width="312">
            <form id="form1" name="form1" method="post">
                <table width="100%" border="0" cellspacing="5" cellpadding="5">
                    <tbody>
                    <tr>
                        <td>
                <textarea name="fkzs" cols="40" rows="20" disabled="disabled" wrap="soft" id="fkzs">
                <%
                    StringTokenizer st = new StringTokenizer(s2, ":");
                    while (st.hasMoreTokens()) {
                        String sst = st.nextToken();
                        out.print("\n你的留言：" + sst);
                    }
                %>
                </textarea></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fkxx" id="fkxx">
                            <input type="submit" name="xxfk" id="xxfk" value=" 信息反馈"></td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td>
            <form id="form2" name="form2" method="post">
                <table width="100%" border="0" cellspacing="5" cellpadding="5">
                    <tbody>
                    <tr>
                        <td width="50%"><p>
                            <label>
                                <input name="xj" type="radio" id="xj" value="5" checked="checked">
                                五星级</label>
                            <br>
                            <label>
                                <input type="radio" name="xj" value="4" id="xj_1">
                                四星级</label>
                            <br>
                            <label>
                                <input type="radio" name="xj" value="3" id="xj_2">
                                三星级</label>
                            <br>
                            <label>
                                <input type="radio" name="xj" value="2" id="xj_3">
                                二星级</label>
                            <br>
                            <label>
                                <input type="radio" name="xj" value="1" id="xj_4">
                                一星级</label>
                            <br>
                        </p></td>
                        <td width="50%" align="center"><p>您的积分：<%
                            StringTokenizer stjf = new StringTokenizer(totaljf, ":");
                            while (stjf.hasMoreTokens()) {
                                String dgjf = stjf.nextToken();
                                int idgjf = Integer.parseInt(dgjf);
                                itotal += idgjf;
                            }
                            out.print(itotal + "分");
                        %></p>
                            <p>
                                <input type="submit" name="pxjf" id="pxjf" value="评星积分">
                            </p></td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </td>
    </tr>
    <tr>
        <td align="center">
            <form id="form3" name="form3" method="post" action="productdisplay.jsp">
                <input type="submit" name="submit3" id="submit3" value="继续选购">
            </form>
        </td>
    </tr>
    </tbody>
</table>
<p>&nbsp;</p>
</body>
</html>
