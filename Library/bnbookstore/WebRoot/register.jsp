<%@ page language="java" import="java.util.*,com.bean.*,com.servlet.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>图书管理系统</title>
<style type="text/css">
body{margin: 0px;}
</style>
</head>
<body>
<form action="<%=basePath %>user?type=add&url=login.jsp" method="post"  >
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="608" background="images/login_03.gif"><table width="862" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="266" background="images/login_04.gif">&nbsp;</td>
      </tr>
      <tr>
        <td height="95"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="424" height="95" background="images/login_06.gif">&nbsp;</td>
            <td width="183" background="images/login_07.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="21%" height="15"><div align="center"><span class="STYLE3">用户</span></div></td>
                <td width="79%" height="15"><input type="text" name="username"  style="height:18px; width:150px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
              </tr>
              <tr>
                <td height="20"><div align="center"><span class="STYLE3">密码</span></div></td>
                <td height="20"><input type="password" name="password"  style="height:18px; width:150px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;"></td>
              </tr>
              <tr>
               <td height="20"><div align="center"><span class="STYLE3">权限</span></div></td>
               <td height="15"><select size="1" name="per"  style="height:18px; width:150px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;">
                                                         <option value="1"  style="height:18px; width:150px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;">普通用户</option>
                                                         </select></td>
              </tr>
             <tr>
                <td height="30">&nbsp;</td>
                <td height="15">
                	<input type="submit" value="注册" style="height:20px; width:40px; border:solid 1px #cadcb2; font-size:12px; color:#81b432; cursor: pointer;">
                	&nbsp;&nbsp;<input type="reset" style="height:20px; width:40px; border:solid 1px #cadcb2; font-size:12px; color:#81b432; cursor: pointer;">
                	&nbsp;&nbsp;<a href="login.jsp"><input type="button" value="登录" style="height:20px; width:40px; border:solid 1px #cadcb2; font-size:12px; color:#81b432; cursor: pointer;"></a>
                </td>
              </tr>
            </table></td>
            <td width="255" background="images/login_08.gif">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="247" valign="top" background="images/login_09.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="22%" height="30">&nbsp;</td>
            <td width="56%">&nbsp;</td>
            <td width="22%">&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="44%" height="20">&nbsp;</td>
                <td width="56%" class="STYLE4">版本 2016-5-23 V1.0 </td>
              </tr>
            </table></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td bgcolor="#a2d962">&nbsp;</td>
  </tr>
</table>
</form>
<map name="Map"><area shape="rect" coords="3,3,36,19" href="#"><area shape="rect" coords="40,3,78,18" href="#"></map></body>
</html>
<script>
function user(){
username=login.username.value;
password=login.password.value;
rights = login.rights.value;
if(username=="")
{
alert("用户名不能为空");
return false;
}else
if(password==""){
alert("密码不能为空");
return false;
}else
if(rights==""){
alert("权限不能为空");
return false;
}
return true;
}
function reset(){
document.login.username.value="";
document.login.password.value="";
document.login.rights.value="";
}
</script>


