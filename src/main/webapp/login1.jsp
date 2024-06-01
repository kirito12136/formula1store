<%@ page language="java" contentType="text/html; charset=gb2312"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>µÇÂ¼Ò³Ãæ</title>
    <script type="text/javascript" language="javascript">
        function check() {
            var sxm = document.form1.yhm.value;
            var smm = document.form1.mm.value;
            if (sxm == "") {
                alert("ÓÃ»§Ãû±ØÌî£¡");
            } else if (smm == "" || smm.length < 6) {
                alert("ÃÜÂë±ØÌîÇÒÖÁÉÙ6¸ö×Ö·û£¡");
            }


        }
    </script>
</head>
<%
    request.setCharacterEncoding("gb2312");
    String yhm = request.getParameter("yhm");
    String mm = request.getParameter("mm");
    String dl = request.getParameter("dl");
    String zc = request.getParameter("zc");
    String zxm = (String) session.getAttribute("qxm");
    String zmm = (String) session.getAttribute("qmm");
    if (zc != null) {
        response.sendRedirect("register.jsp");
    } else if (dl != null) {
        if (yhm.equals(zxm) && mm.equals(zmm)) {

            response.sendRedirect("productdisplay.jsp");
        }

    }


%>
<body>
<form id="form1" name="form1" method="post" action="">
    <table width="494" border="0" align="center">
        <tr>
            <td width="150" align="left">ÓÃ»§Ãû£º</td>
            <td colspan="2"><label>
                <input type="text" name="yhm" id="yhm"/>
                <font color=red size=-3> *±ØÌî</font>
            </label></td>
        </tr>
        <tr>
            <td align="left">ÃÜÂë£º</td>
            <td colspan="2"><label>
                <input type="password" name="mm" id="mm"/>
                <font color=red size=-3> *±ØÌî,ÖÁÉÙ6¸ö×Ö·û</font>
            </label></td>
        </tr>
        <tr>
            <td><label>
                <input type="submit" name="dl" id="dl" value="µÇÂ¼" onclick="check()"/>
            </label></td>
            <td width="167"><label>
                <input type="submit" name="zc" id="zc" value="×¢²á"/>
            </label></td>
            <td width="163"><label>
                <input type="reset" name="button3" id="button3" value="È¡Ïû"/>
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
