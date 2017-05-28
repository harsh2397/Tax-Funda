<%-- 
    Document   : profiles.jsp
    Created on : Sep 19, 2016, 8:52:18 PM
    Author     : HARSH
--%>
<%@page import="model. User"%>
<%@page import="dao.Userdao"%>
<%@include file="header.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<meta name="generator" content="Web Page Maker">
<link rel="stylesheet" type="text/css" href="default.css" />
<style type="text/css">
a.style1:link{color:#000000;text-decoration: none;}
a.style1:visited{color:#000000;text-decoration: none;}
a.style1:hover{color:#000000;text-decoration: none;}
a.style1:active{color:#000000;text-decoration: none;}
</style>

<style type="text/css">
div#container
{
	position:relative;
	width: 1300px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}
</style>

</head>
<body bgColor="white">

  
    <div class="wrapper row3" style="left: 20px">
        <main class="hoc container clear"> 
    <main class="hoc container clear"> 
        <main class="hoc container clear"> 
            <main class="hoc container clear">
        <main class="hoc container clear">
         <nav id="mainav" class="hoc clear">
  
    
    <div id="container" style="position: absolute; left: 50px; top: 270px">
<div id="shape1" style="position:absolute; overflow:hidden; left:200px; top:10px; width:900px; height:634px; z-index:0"><img border=0 width="100%" height="100%" alt="" src="images/shape204397750.gif"></div>

<div id="shape2" style="position:absolute; overflow:hidden; left:219px; top:35px; width:180px; height:31px; z-index:1"><img border=0 width="100%" height="100%" alt="" src="images/shape205243375.gif"></div>

<div id="text1" style="position:absolute; overflow:hidden; left:253px; top:35px; width:118px; height:30px; z-index:2">
<div class="wpmd">
<div align=center><font color="#FFFFFF" face="Calisto MT" class="ws16"><B>My Account</B></font></div>
</div></div>

<div id="text2" style="position:absolute; overflow:hidden; left:425px; top:32px; width:250px; height:30px; z-index:3">
<div class="wpmd">
<div align=center><font color="#000000" face="Calisto MT" class="ws18"><B>Personal Information</B></font></div>
</div></div>

<div id="text3" style="position:absolute; overflow:hidden; left:230px; top:120px; width:118px; height:25px; z-index:4">
<div class="wpmd">
<div align=center><font color="#585858" face="Calisto MT" class="ws16"><B>SETTINGS</B></font></div>
</div></div>

<div id="shape3" style="position:absolute; overflow:hidden; left:413px; top:40px; width:6px; height:576px; z-index:5"><img border=0 width="100%" height="100%" alt="" src="images/shape205691593.gif"></div>

<div id="text4" style="position:absolute; overflow:hidden; left:237px; top:168px; width:144px; height:27px; z-index:6">
<div class="wpmd">
<div><font face="Cambria" class="ws12"><a href="change.jsp" title="" class="style1">Change Password</a></font></div>
</div></div>



<div id="text6" style="position:absolute; overflow:hidden; left:237px; top:206px; width:176px; height:27px; z-index:8">
<div class="wpmd">
<div><font face="Cambria" class="ws12"><a href="update.jsp" title="" class="style1">Update Email/Mobile</a></font></div>
</div></div>

<div id="hr1" style="position:absolute; overflow:hidden; left:225px; top:263px; width:172px; height:17px; z-index:9">
<hr size=2 width=172>
</div>

<div id="text7" style="position:absolute; overflow:hidden; left:487px; top:132px; width:81px; height:30px; z-index:10">
<div class="wpmd">
<div><font class="ws12">Username</font></div>
</div></div>
<div id="text8" style="position:absolute; overflow:hidden; left:487px; top:206px; width:73px; height:19px; z-index:12">
<div class="wpmd">
<div><font class="ws12">Email Id</font></div>
</div></div>
<div id="text9" style="position:absolute; overflow:hidden; left:487px; top:280px; width:90px; height:19px; z-index:14">
<div class="wpmd">
<div><font class="ws12">Contact No.</font></div>
</div></div>

<%
    
    try
    {
    String pann=null;
    pann=session.getAttribute("pann").toString();
    Userdao ed=new Userdao();
   
   
            User E=ed.search(pann);
           
             out.println("<input name=uname type=text value="+E.getFirstname()+""+E.getLastname()+" readonly style=position:absolute;width:200px;left:600px;top:126px;z-index:11>");
             out.println("<input name=mail type=text value="+E.getEmail()+" readonly style=position:absolute;width:200px;left:600px;top:206px;z-index:13>");
             out.println("<input name=phn type=text value="+E.getPhn()+"  readonly style=position:absolute;width:200px;left:600px;top:280px;z-index:15>");
        
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>

 <div class="clear"></div>
</div>
         </nav>
    </div>
</body>
</html>
<%@include file="footer.jsp" %>