<%@ page language="java" contentType="text/html; charset=gb2312"
%>
<% request.setCharacterEncoding("gb2312"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>ע��ҳ��</title>
    <style type="text/css">
        .zt {
            font-family: "����";
            font-size: 16px;
            font-style: normal;
            color: #FB0307;
            background-color: #10F805;
            border: thin dotted #F0F703;
        }

        .zg {
            font-family: "��������";
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
                alert("�û������");
            } else if (smm == "" || smm.length < 6) {
                alert("�������������6���ַ���");
            } else if (sqrmm != smm) {
                alert("����������ͬ��");
            } else if (syx.indexOf('@', 0) == -1 || syx.indexOf('.', 0) == -1) {
                alert("����������ʽ���磺zzz@126.com��");
            } else if (sdh == "" || sdh.length != 11) {
                alert("��� ��11���ַ�");
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
            <td class="zg" colspan="2">��������������Ϣ��</td>
        </tr>
        <tr>
            <td width="130" class="zg">������</td>
            <td width="460"><label>
                <input class="fk" type="text" name="xm" id="xm"/>
                <font color=red size=-3> *����</font>
            </label></td>
        </tr>
        <tr>
            <td class="zg">���룺</td>
            <td><input class="fk" type="password" name="mm" id="mm"/>
                <font color=red size=-3> *�������6���ַ�</font></td>

        </tr>
        <tr>
            <td class="zg">ȷ�����룺</td>
            <td><input class="fk" type="password" name="qrmm" id="qrmm"/>
                <font color=red size=-3> *����������ͬ</font></td>
        </tr>
        <tr>
            <td class="zg">�Ա�</td>
            <td><p>
                <label>
                    <input name="xb" type="radio" id="xb" value="��" checked="checked"/>
                    <span class="zg"> �� </span></label>
                <label>
                    <input type="radio" name="xb" value="Ů" id="xb"/>
                    <span class="zg"> Ů</span></label>
                <br/>
            </p></td>
        </tr>
        <tr>
            <td class="zg">���䣺</td>
            <td><input class="fk" type="text" name="yx" id="yx"/>
                <font color=red size=-3> *����������ʽ���磺zzz@126.com��</font></td>
        </tr>
        <tr>
            <td class="zg">�绰��</td>
            <td><input class="fk" type="text" name="dh" id="dh"/>
                <font color=red size=-3> *��� ��11���ַ�</font></td>
        </tr>
        <tr>
            <td class="zg">���ã�</td>
            <td><label>
                <input class="fk" type="checkbox" name="ah" id="ah" value="����" checked/>
                <span class="zg">����</span> &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="����Ӱ"/>
                <span class="zg">  ����Ӱ</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="����"/>
                <span class="zg"> ����</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="����"/>
                <span class="zg"> ����</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="����Ϸ"/>
                <span class="zg">����Ϸ</span>
                &nbsp;
                <input class="fk" type="checkbox" name="ah" id="ah" value="��"/>
                <span class="zg">   ��</span>
            </label></td>
        </tr>
        <tr>
            <td height="34" class="zg">��ע��</td>
            <td><label>
                <textarea class="fk" name="bz" id="bz" cols="45" rows="4">����Щ�򵥽��ܣ�</textarea>
            </label></td>
        </tr>
        <tr>
            <td><label>
                <input class="zt" type="submit" name="zccg" id="zccg" value="ע��ɹ�" onclick="check()"/>
            </label></td>
            <td><label>
                <input class="zt" type="reset" name="button2" id="button2" value="ȡ��"/>
            </label></td>
        </tr>
    </table>
</form>
</body>
</html>
