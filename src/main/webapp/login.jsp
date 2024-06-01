<%@ page language="java" contentType="text/html; charset=GB2312"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GB2312">
    <title>登录</title>
    <style type="text/css">
        body {
            font-family: "宋体";
            font-style: normal;
            font-weight: bold;
        }

        .dl {
            font-family: "宋体";
            font-style: normal;
            color: black;
            background-color: red;
            border: thin dotted #f0f703;
            border-radius: 25px;
        }

        .mm {
            font-family: "宋体";
            font-style: normal;
            color: black;
            background-color: red;
            border: thin dotted #f0f703;
            border-radius: 25px;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function check() {
            var xm = document.f1.xm.value;
            var mm = document.f1.mm.value;
            if (xm == "") {
                alert("姓名为空")
            } else if (mm = "") {
                alert("密码为空")
            }
        }
    </script>
</head>
<body>
<%
    request.setCharacterEncoding("GB2312");
    String dl = request.getParameter("dl");
    String zc = request.getParameter("zc");
    String xm = request.getParameter("xm");
    String mm = request.getParameter("mm");
    String zxm = (String) session.getAttribute("qxm");
    String zmm = (String) session.getAttribute("qmm");
    if (zc != null) {
        response.sendRedirect("productdisplay.jsp");
    } else if (dl != null) {
        if (xm.equals(zxm) && mm.equals(zmm)) {
            response.sendRedirect("index.html");
        }
    }
%>
<form name="f1" method="post" action="">
    <a>姓名：</a>
    <input type="text" name="xm" size="10"><br>
    密码：<input type="password" name="mm" size="10"><br>
    <input class="dl" type="submit" name="dl" value="登录" onclick="check()">
    <input class="mm" type="submit" name="zc" value="注册">
    <input type="reset" name="qk" value="清空">
</form>
</body>
</html>