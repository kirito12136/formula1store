<%@ page language="java" contentType="text/html; charset=gb2312"
%>
<% request.setCharacterEncoding("gb2312"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>×¢²áÒ³Ãæ</title>
    <style type="text/css">
        .zt {
            font-family: "Á¥Êé";
            font-size: 16px;
            font-style: normal;
            color: #FB0307;
            background-color: #10F805;
            border: thin dotted #F0F703;
        }

        .zg {
            font-family: "·½ÕýÊæÌå";
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
                alert("ÓÃ»§Ãû±ØÌî£¡");
            } else if (smm == "" || smm.length < 6) {
                alert("ÃÜÂë±ØÌîÇÒÖÁÉÙ6¸ö×Ö·û£¡");
            } else if (sqrmm != smm) {
                alert("ÐëÓëÃÜÂëÏàÍ¬£¡");
            } else if (syx.indexOf('@', 0) == -1 || syx.indexOf('.', 0) == -1) {
                alert("Ðë·ûºÏÓÊÏä¸ñÊ½£¨Èç£ºzzz@126.com£©");
            } else if (sdh == "" || sdh.length != 11) {
                alert("±ØÌî£¬ Ðë11¸ö×Ö·û");
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
            <td class="zg" colspan="2">ÇëÄúÊäÈëÏÂÁÐÐÅÏ¢£º</td>
        </tr>
        <tr>
            <td width="130" class="zg">ÐÕÃû£º</td>
            <td width="460"><label>
                <input class="fk" type="text" name="xm" id="xm"/>
                <font color=red size=-3> *±ØÌî</font>
            </label></td>
        </tr>
        <tr>
            <td class="zg">ÃÜÂë£º</td>
            <td><input class="fk" type="password" name="mm" id="mm"/>
                <font color=red size=-3> *±ØÌî£¬ÖÁÉÙ6¸ö×Ö·û</font></td>

        </tr>
        <tr>
            <td class="zg">È·ÈÏÃÜÂë£º</td>
            <td><input class="fk" type="password" name="qrmm" id="qrmm"/>
                <font color=red size=-3> *ÐëÓëÃÜÂëÏàÍ¬</font></td>
        </tr>
        <tr>
            <td class="zg">ÐÔ±ð£º</td>
            <td><p>
                <label>
                    <input name="xb" type="radio" id="xb" value="ÄÐ" checked="checked"/>
                    <span class="zg"> ÄÐ </span></label>
                <label>
                    <input type="radio" name="xb" value="Å®" id="xb"/>
                    <span class="zg"> Å®</span></label>
                <br/>
            </p></td>
        </tr>
        <tr>
            <td class="zg">ÓÊÏä£º</td>
            <td><input class="fk" type="text" name="yx" id="yx"/>
                <font color=red size=-3> *Ðë·ûºÏÓÊÏä¸ñÊ½£¨Èç£ºzzz@126.com£©</font></td>
        </tr>
        <tr>
            <td class="zg">µç»°£º</td>
            <td><input class="fk" type="text" name="dh" id="dh"/>
                <font color=red size=-3> *±ØÌî£¬ Ðë11¸ö×Ö·û</font></td>
        </tr>
        <tr>
            <td class="zg">°®ºÃ£º</td>
            <td><label>
                <input class="fk" type="checkbox" name="ah" id="ah" value="¿´Êé" checked/>
                <span class="zg">¿´Êé</span> &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="¿´µçÓ°"/>
                <span class="zg">  ¿´µçÓ°</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="ÂÃÓÎ"/>
                <span class="zg"> ÂÃÓÎ</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="´òÇò"/>
                <span class="zg"> ´òÇò</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="´òÓÎÏ·"/>
                <span class="zg">´òÓÎÏ·</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="Íæ"/>
                <span class="zg">   Íæ</span>
            </label></td>
        </tr>
        <tr>
            <td height="34" class="zg">±¸×¢£º</td>
            <td><label>
                <textarea class="fk" name="bz" id="bz" cols="45" rows="4">ÇëÔÚÐ©¼òµ¥½éÉÜ£º</textarea>
            </label></td>
        </tr>
        <tr>
            <td><label>
                <input class="zt" type="submit" name="zccg" id="zccg" value="×¢²á³É¹¦" onclick="check()"/>
            </label></td>
            <td><label>
                <input class="zt" type="reset" name="button2" id="button2" value="È¡Ïû"/>
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
