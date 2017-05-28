<%-- 
    Document   : update1
    Created on : Sep 23, 2016, 8:21:27 PM
    Author     : HARSH
--%>

<%@page import="model.User"%>
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
<body bgColor="#EAEAEA">
<div id="container" style="position: absolute; left: 150px; top: 200px">
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

<div id="shape3" style="position:absolute; overflow:hidden; left:413px; top:40px; width:3px; height:576px; z-index:5"><img border=0 width="100%" height="100%" alt="" src="images/shape205691593.gif"></div>

<div id="text4" style="position:absolute; overflow:hidden; left:237px; top:168px; width:144px; height:27px; z-index:6">
<div class="wpmd">
<div><font face="Cambria" class="ws12"><a href="index.html" title="" class="style1">Change Password</a></font></div>
</div></div>

<div id="text5" style="position:absolute; overflow:hidden; left:238px; top:211px; width:157px; height:27px; z-index:7">
<div class="wpmd">
<div><font face="Cambria" class="ws12"><a href="index.html" title="" class="style1">Deactivate Account</a></font></div>
</div></div>

<div id="text6" style="position:absolute; overflow:hidden; left:237px; top:256px; width:176px; height:27px; z-index:8">
<div class="wpmd">
<div><font face="Cambria" class="ws12"><a href="index.html" title="" class="style1">Update Email/Mobile</a></font></div>
</div></div>

<div id="hr1" style="position:absolute; overflow:hidden; left:225px; top:313px; width:172px; height:17px; z-index:9">
<hr size=2 width=172>
</div>



 
</div>

</body>
</html>

<%
         try
            {
            String user,mailid,pann;
            long phn;
            pann=session.getAttribute("pann").toString();
           phn=Long.parseLong(request.getParameter("phn"));
           user=request.getParameter("uname");
           mailid=request.getParameter("mail");
            User E=new User();
            E.setPann(pann);
            E.setFirstname(user);
            E.setEmail(mailid);
            E.setPhn(phn);
             Userdao ed=new Userdao();
             if(ed.update(E))
             {
 %>
         <div id="text" style="position:absolute; overflow:hidden; left:500px; top:280px; width:700px; height:200px; z-index:10">
        <div class="wpmd">
            <div align="center"><font color="red" class="ws12"><font size="6">Account Updated Successfully</font></font></div></div></div> 


<%
          }
       }
         catch(Exception e)
         {
             out.println(e);
         }
 %>