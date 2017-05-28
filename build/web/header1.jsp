<%-- 
    Document   : header
    Created on : Apr 23, 2017, 5:34:04 PM
    Author     : HARSH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>TaxFunda</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/layout2.css" rel="stylesheet" type="text/css" media="all">
<style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 12px;
    font-size: 14px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: gainsboro;
    min-width: 150px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 2px 10px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>

</head>

<body id="top">
    
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul class="nospace inline pushright">
        <li><i class="fa fa-phone"></i> +91 8982325745</li>
        <li><i class="fa fa-envelope-o"></i> taxfunda@gmail.com</li>
      </ul>
    </div>
    <div class="fl_right">
      <ul class="faico clear">
        <li><a class="faicon-facebook" href="#"><i class="fa fa-facebook"></i></a></li>
      <!--  <li><a class="faicon-pinterest" href="#"><i class="fa fa-pinterest"></i></a></li> -->
        <li><a class="faicon-twitter" href="#"><i class="fa fa-twitter"></i></a></li>
      <!--   <li><a class="faicon-dribble" href="#"><i class="fa fa-dribbble"></i></a></li> -->
        <li><a class="faicon-linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
        <li><a class="faicon-google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
            </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row1" >
  <header id="header" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div id="logo" class="fl_left">
      <h1><a href="homepages.jsp">Taxfunda</a></h1>
    </div>
    
<!--    <div style="position: absolute; top:-60px; left:710px;">
    <div id="quickinfo" class="fl_right">
   <ul class="nospace inline">
       <li><strong>Ayush:</strong><br>
          +91 9406884878</li>
        <li><strong>Harsh:</strong><br>
          +91 8982325745</li>
   </ul>
   </div>
</div>-->
  </header>
</div>

<!-- ################################################################################################ -->
<!--<div style="position: absolute; top: 100px;"> -->
<nav id="mainav" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <ul class="clear">
      <li class="active"><a href="homepages.jsp">Home</a></li>
      <li><a href="#">Services</a>
      </li>
      <li><a href="calc.jsp">Tax calculator</a>
      </li>
      <li><a href="qa.jsp">Questionnaires</a></li>
      <li><a href="profiles.jsp">Profile</a></li>
      <li><a href="aboutus.jsp">About us</a></li>
     
    </ul>
    <!-- ################################################################################################ -->
  </nav>
<!--</div>-->

    
     <%
    try
    {
       String Pann=null,Pass=null,Name=null;
       Pann=session.getAttribute("pann").toString();
       Pass=session.getAttribute("pass").toString();
       
       
               if((Pann!=null) && (Pass!=null))
               {
       Name=session.getAttribute("name").toString();          
%>

<div class="dropdown">
<div id="formimage3" style="position:absolute; left:1150px; top:-65px; z-index:15"><input type="image" name="formimage3" width="40" height="40" src="images/user.png">
    <div class="dropdown-content" style="position: absolute;">
    <a href="profiles.jsp"><input type="image" name="myprof" width="15" height="15" src="images/my.png"><b>My Profiles</b></a>
    <a href="orders.jsp"><input type="image" name="sign" width="15" height="15" src="images/order.png"><b>Orders</b></a>
    <a href="logout.jsp"><input type="image" name="sign" width="15" height="15" src="images/logout.png"><b>Signout</b></a>
  </div>
</div>
</div>
    <div id="text1" style="position:absolute;  left:1200px; top:-20px; width:95px; height:25px; z-index:15">
<div class="wpmd">
    <br><br><br><br><br><br><br><br> 
<div><font color="white" size="4sp" face="times new roman " class="ws14"><B>Hi,
<%
        out.print(" "+Name);
 %>
        </B></font></div></div></div>

<%             
        }
     }
    catch(Exception e)
    {
         
    } 
 %>


    </body>
</html>
