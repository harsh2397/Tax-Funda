

<!-- 
    Document   : aboutus
    Created on : May 4, 2017, 3:16:38 PM
    Author     : HARSH
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.*"%>
<%@page import="dao.Userdao"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<!--
Template Name: Pedggie
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<%@include file="header.jsp" %>
<html>
<head>
<title>About us</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
 
</head>
<body id="top">
<!-- ################################################################################################ -->
<!--  -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <h1 align="center"><font size="24" color="green" > About us</font></h1>
      <img class="imgr borderedbox inspace-5" src="images/demo.jpg" alt="">
      <p>Tax Funda is the first leading website in India. The moto of our website is to provide bridge between the Indian government and tax payers. We had made this to fill the communication gap and provide all possible information .</p>
      <p>India being a welfare state follows progressive taxation system. Taxes in India are levied by the
          <a href="https://www.incometaxindia.gov.in">
              Central Government and the state governments</a>. Some minor taxes are also levied by the local

authorities such as the Municipality for the basic utilities like- drainage, property etc. Collected

tax amount is used for building nation (infrastructure &amp; other development), to increase arms and

ammunition for defence of country and for other welfare related work. Indian government laid

about more than 20 taxes on products and services provided by the government or other

agencies.</p>
      <img class="imgl borderedbox inspace-5" src="images/getadvice.jpg" alt="">
      <p>Through questionnaire, provide financial advice to the clients in a digitized manner through

our experts panel consisting of Chartered Accountants and financial advisor. Serve to

provide a unique and innovative financial plan keeping customer circumstances in mind. Provision of quick alerts through e-mail helps client to get know about various tax reforms.
Client will receive notification regarding various investment and mutual fund policy. It also

help in filling a gap between the tax payer and government agencies.
It

will help in protecting the investment and maximizing the return from the various activities.

In return user can also provide feedback about experts which help to improve the system

performance.</p>
      <div align="right">       for questionnaire visit - >> <a href="qa.jsp?page=1"> Q&A </a></div> 
      
      
      <br>
       </br>
        </br>
<%
        String name=null,email=null,comment=null,time=null;
    try{
        
            name=request.getParameter("name");
            email=request.getParameter("email");
            comment=request.getParameter("comment");
            
            long milis=System.currentTimeMillis();
            Date date=new Date(milis);
            time=date.toString();
         
            User U=new User();
            
            if((name!=null)&&(comment!=null))
        {
         
            
            U.setFname(name);
            U.setFemail(email);
            U.setComment(comment);
            U.setTim(time);
                       
            Userdao ued=new Userdao();
            if(ued.insertFeedback(U))
            {
                if(!response.isCommitted())
                response.sendRedirect("aboutus.jsp");
            }
            else
            {
                out.println("byebye");
            }
        }
        
        
    
    }
    catch(Exception e)
    {
    out.println(e);
    }
%>

        
      <!-- Comment OR Feedback Session -->
      
      <div id="comments">
        <h2>Feedback</h2>
        <ul>
          
              <%
                  try
                  {
                      int c1=0;
                  Userdao d=new Userdao();
                   
                   List<User>mylist2=d.fsearchAll();
                   
                       for(User U:mylist2)
                       { 
                           c1++;
                          
                           if(c1<=8)
                           {
                          
                 %> 
             <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(U.getFname());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(U.getTim());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(U.getComment());
                          %>
                  </p>
              </div>
            </article>
                  </li>
                          <%
                           }
                           else
                           {
                               
                           }
                      
                              }
                           %>
          
          <%
                  
                  }
                  catch(Exception e)
                  {
                      out.println(e);
                  }
             %>
                  
        </ul>
        </br> </br> 
        <h2>Write A Comment</h2>
        <form action="" method="post">
          <div class="one_third first">
            <label for="name">Name <span>*</span></label>
            <input type="text" name="name" id="name"  size="22" required>
          </div>
          <div class="one_third">
            <label for="email">Mail <span>*</span></label>
            <input type="email" name="email" id="email"  size="22" required>
          </div>
          <div class="one_third">
          </div>
          <div class="block clear">
            <label for="comment">Your Comment</label>
            <textarea name="comment" id="comment" cols="25" rows="10"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="Submit Form">
            &nbsp;
            <input type="reset" name="reset" value="Reset Form">
          </div>
        </form>
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

</body>
</html>
<%@include file="footer.jsp" %>