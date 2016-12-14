<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PTE Essay writing</title>
</head>
<body>
Write Essay 
<br>
Block <textarea rows="20" cols="1" style="width:1200px; height:500px;" onkeyup="wordcount(this.value)"></textarea>
<br>


</body>

<script type=""text/javascript"">
var cnt;
function wordcount(count) {
var words = count.split(/\s/);
cnt = words.length;
var ele = document.getElementById('w_count');
ele.value = cnt;
}
document.write("<input type=text id=w_count size=4 readonly>");
</script>


<script>
<!--
<%
String clock = request.getParameter( "clock" );
if( clock == null ) clock = "1200";
%>
var timeout = <%=clock%>;
function timer()
{
if( --timeout > 0 )
{
document.forma.clock.value = timeout;
window.setTimeout( "timer()", 1000 );
}
else
{tar
document.forma.clock.value = "Time over";
///disable submit-button etc
}
}
//-->
</script>
<body>
<form action="<%=request.getRequestURL()%>" name="forma">
Seconds remaining: <input type="text" name="clock" value="<%=clock%>" style="border:0px solid white">
...
</form>
<script>
<!--
timer();
//-->
</script>


</html>

