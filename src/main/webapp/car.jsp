<%@ page language="java" contentType="text/html; charset=gb2312"
         import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>购物车</title>
    <style type="text/css">
        .zt {
            font-family: "方正舒体";
            font-size: 32px;
            font-style: normal;
            color: #FB0307;
        }

        .zt1 {
            font-family: "方正舒体";
            font-size: 16px;
            font-style: normal;
            color: blue;
        }

        .zg {
            font-family: "华文细黑";
            font-size: 16px;
            font-style: normal;
            color: black;
        }

        .fk {
            background-color: #F4EB04;
            border: medium dotted #0C02FC;
        }
    </style>
</head>

<body>
<ol>
    <%
        request.setCharacterEncoding("gb2312");
        String qcdd = request.getParameter("qcdd");
        String spm = request.getParameter("spm");
        String dj = request.getParameter("dj");
        String sl = request.getParameter("sl");
        String s1 = spm + ":" + dj + ":" + sl;
        String s2 = "";
        if (qcdd != null) {
            session.setAttribute("qs2", null);
        } else {
            s2 = (String) session.getAttribute("qs2");
            if (s2 == null) {
                s2 = s1;
            } else {
                s2 = s2 + ":" + s1;
            }
            session.setAttribute("qs2", s2);

            StringTokenizer st = new StringTokenizer(s2, ":");
            Double total = 0.0;

            while (st.hasMoreTokens()) {
                String stspm = st.nextToken();

                try {
                    String stdj = st.nextToken();
                    Double ddj = Double.parseDouble(stdj);

                    String stsl = st.nextToken();
                    Double dsl = Double.parseDouble(stsl);

                    out.print("<li>" + stspm + ", 单价为：" + stdj + "元, " + stsl + "个<br>合计：" + (ddj * dsl) + "元<br></li>");
                    total += ddj * dsl;
                } catch (Exception e) {
                    out.print("解析错误：" + e.getMessage());
                }
            }
            out.println("总金额：" + total + "元");
            session.setAttribute("qtotal", total);
        }
    %>
</ol>

<table width="200" border="0" cellpadding="5" cellspacing="5">
    <tbody>
    <tr>
        <td align="center">
            <form id="form1" name="form1" method="post" action="pay.jsp">
                <input class="fk" type="submit" name="zfjs" id="zfjs" value="支付结算">
            </form>
        </td>
        <td align="center">
            <form id="form2" name="form2" method="post" action="productdisplay.jsp">
                <input class="fk" type="submit" name="jxxg" id="jxxg" value="继续选购">
            </form>
        </td>
        <td align="center">
            <form id="form3" name="form3" method="post" action="">
                <input class="fk" type="submit" name="qcdd" id="qcdd" value="清除订单">
            </form>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
