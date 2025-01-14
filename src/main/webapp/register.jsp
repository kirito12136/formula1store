<%@ page language="java" contentType="text/html; charset=gb2312"
%>
<% request.setCharacterEncoding("gb2312"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>注册页面</title>
    <style type="text/css">
        .zt {
            font-family: "隶书";
            font-size: 16px;
            font-style: normal;
            color: #FB0307;
            background-color: #10F805;
            border: thin dotted #F0F703;
        }

        .zg {
            font-family: "方正舒体";
            font-size: 16px;
            font-style: normal;
            color: #F8090D;
        }

        .fk {
            background-color: #F4EB04;
            border: medium dotted #0C02FC;
        }
    </style>
    <script type="text/javascript" language="javascript">
        function check() {
            var sxm = document.form1.xm.value;
            var smm = document.form1.mm.value;
            var sqrmm = document.form1.qrmm.value;
            var syx = document.form1.yx.value;
            var sdh = document.form1.dh.value;

            if (sxm == "") {
                alert("用户名必填！");
            } else if (smm == "" || smm.length < 6) {
                alert("密码必填且至少6个字符！");
            } else if (sqrmm != smm) {
                alert("须与密码相同！");
            } else if (syx.indexOf('@', 0) == -1 || syx.indexOf('.', 0) == -1) {
                alert("须符合邮箱格式（如：zzz@126.com）");
            } else if (sdh == "" || sdh.length != 11) {
                alert("必填， 须11个字符");
            }
        }
    </script>
</head>
<%
    request.getParameter("xm");
    String xm = request.getParameter("xm");
    String mm = request.getParameter("mm");
    session.setAttribute("qxm", xm);
    session.setAttribute("qmm", mm);

%>
<body>
<form id="form1" name="form1" method="post" action="">
    <table width="700" border="0">
        <tr>
            <td class="zg" colspan="2">请您输入下列信息：</td>
        </tr>
        <tr>
            <td width="130" class="zg">姓名：</td>
            <td width="460"><label>
                <input class="fk" type="text" name="xm" id="xm"/>
                <font color=red size=-3> *必填</font>
            </label></td>
        </tr>
        <tr>
            <td class="zg">密码：</td>
            <td><input class="fk" type="password" name="mm" id="mm"/>
                <font color=red size=-3> *必填，至少6个字符</font></td>

        </tr>
        <tr>
            <td class="zg">确认密码：</td>
            <td><input class="fk" type="password" name="qrmm" id="qrmm"/>
                <font color=red size=-3> *须与密码相同</font></td>
        </tr>
        <tr>
            <td class="zg">性别：</td>
            <td><p>
                <label>
                    <input name="xb" type="radio" id="xb" value="男" checked="checked"/>
                    <span class="zg"> 男 </span></label>
                <label>
                    <input type="radio" name="xb" value="女" id="xb"/>
                    <span class="zg"> 女</span></label>
                <br/>
            </p></td>
        </tr>
        <tr>
            <td class="zg">邮箱：</td>
            <td><input class="fk" type="text" name="yx" id="yx"/>
                <font color=red size=-3> *须符合邮箱格式（如：zzz@126.com）</font></td>
        </tr>
        <tr>
            <td class="zg">电话：</td>
            <td><input class="fk" type="text" name="dh" id="dh"/>
                <font color=red size=-3> *必填， 须11个字符</font></td>
        </tr>
        <tr>
            <td class="zg">爱好：</td>
            <td><label>
                <input class="fk" type="checkbox" name="ah" id="ah" value="看书" checked/>
                <span class="zg">看书</span> &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="看电影"/>
                <span class="zg">  看电影</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="旅游"/>
                <span class="zg"> 旅游</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="打球"/>
                <span class="zg"> 打球</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="打游戏"/>
                <span class="zg">打游戏</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="玩"/>
                <span class="zg">   玩</span>
            </label></td>
        </tr>
        <tr>
            <td height="34" class="zg">备注：</td>
            <td><label>
                <textarea class="fk" name="bz" id="bz" cols="45" rows="4">请在些简单介绍：</textarea>
            </label></td>
        </tr>
        <tr>
            <td><label>
                <input class="zt" type="submit" name="zccg" id="zccg" value="注册成功" onclick="check()"/>
            </label></td>
            <td><label>
                <input class="zt" type="reset" name="button2" id="button2" value="取消"/>
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
