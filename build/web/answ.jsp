

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
    <%
               String ques=null;
               User E=new User();
                try
                {
                 ques=request.getParameter("hdn");
                 ques=ques.substring(0,(ques.length()-1));
                Userdao r=new Userdao();
                
                        if(ques!=null)
                        {
                            
                          E=r.searchques(ques);
                          
         %>
       
         <div id="comments">
             <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getFname().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTim());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getQstn());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
        
                 
                      
                  <hr><br>   
          <h2><font size="14px">Answers</font></h2>
              <%
                   
                   if(E.getAns1()!=null)
                   {
            %>
             <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName1().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime1());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns1());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
            <%
                
                    if(E.getAns2()!=null)
                    {
            %>
                 <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName2().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime2());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns2());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
            <%            
                    if(E.getAns3()!=null)
                    {
             %>
                 <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName3().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime3());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns3());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
             <%
                 if(E.getAns4()!=null)
                 {
              %>
              
                  <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName4().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime4());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns4());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
              <%
                  if(E.getAns5()!=null)
                  {
                      %>
                          <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName5().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime5());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns5());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
            <%
                if(E.getAns6()!=null)
                {
             %>
                 <ul>
         <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+E.getName6().toUpperCase());
                     %>
                        </a>
                </address>
                <time>
                    <%
                      out.println(E.getTime6());
                    %>
                </time>
              </header>
              <div class="comcont">
                  <p>
                      <%
                          out.println(E.getAns6());
                          %>
                  </p>
              </div>
            </article>
                  </li>
        </ul>
         
             <%
                }
                
                  }
                 }
                    }
                    }
                            }
                   else
                    {

                    }
                
                        }
                }
                catch(Exception e)
                {
                  
                }
          %>
     
          
          
      <!-- Comment OR Feedback Session -->
        <%
              String cat=session.getAttribute("cat").toString();
                if(cat.equals("experts"))
                {
          
        
          %>
      <div id="comments">
       
       
        <form action="" method="post">
          
          <div class="one_third">
          </div>
          <div class="block clear">
            <label for="comment">Give Answer</label>
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
    
    <!-- ################################################################################################ -->
    <!-- / main body -->

    <div class="clear"></div>




      <%
              }
              %>
         </div>
    </div>
  </main>
</div>          
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

</body>
</html>
<%
        String name=null,comment=null,time=null,quest=null;
    try{
        
            name=session.getAttribute("name").toString();
            comment=request.getParameter("comment");
            quest=E.getQstn();
            long milis=System.currentTimeMillis();
            Date date=new Date(milis);
            time=date.toString();
         
            User U=new User();
            
            if(comment!=null)
        {
         
            U.setQstn(quest);
            U.setName1(name);
            U.setAns1(comment);
            U.setTime1(time);
                       
            Userdao ued=new Userdao();
            if(ued.update1(U))
            {
                
                response.sendRedirect("answ.jsp?hdn="+request.getParameter("hdn")+"");
            }
            else
            {
               
            }
        }
        
        
    
    }
    catch(Exception e)
    {
    out.println();
    }
%>

<%@include file="footer.jsp" %>