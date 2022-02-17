<html>
<head>
<title>Change password in jsp</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<h2 align="center"><strong>Change password in JSP form</strong></h2>
<body background="H:\simplinering\SCAME\flight.jpg" width: 700%; height: 900%;>
<script language="javascript">
function fncSubmit()
{
if(document.ChangePasswordForm.newpassword.value == "")
{
alert('Please input Password');
document.ChangePasswordForm.newpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.conpassword.value == "")
{
alert('Please input Confirm Password');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

if(document.ChangePasswordForm.newpassword.value != document.ChangePasswordForm.conpassword.value)
{
alert('Confirm Password Not Match');
document.ChangePasswordForm.conpassword.focus(); 
return false;
} 

document.ChangePasswordForm.submit();
}
</script>
<form name="ChangePasswordForm" method="post" action="processChangePWD.jsp" OnSubmit="return fncSubmit();">

<table border="1" align="center" bgcolor="#2B60DE">

<tr>

<tr>
<td>NewPassword</td>
<td><input name="newpassword" type="password" id="newpassword">
</td>
</tr>
<tr>
<td>Confirm Password</td>
<td><input name="conpassword" type="password" id="conpassword">
</td>
</tr>
<tr>
<td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Save"></td>
</tr>

</table>
</form>

</body>
</html>