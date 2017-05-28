<%-- 
    Document   : qa
    Created on : May 6, 2017, 5:15:21 AM
    Author     : Ayush
--%>



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
<%@include file="header.jsp" %>
<html>
<head>
<title>Questionnaires</title>
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
      
        <h1 align="center"><font size="24" color="green" > Questionnaire </font></h1>
      <!-- Comment OR Feedback Session -->
      
      <div id="comments">
           <h2>Ask Query</h2>
          <form  method="post">
              <div class="block clear">
            <textarea name="comment" id="comment" cols="15" rows="5"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="Submit">
            &nbsp;
            <input type="reset" name="reset" value="Reset">
          </div>
          </form>
       
        <ul>
          
              <%
                  try
                  {
                      String cat=null;
                      int page1;
                        page1= Integer.parseInt(request.getParameter("page"));
                        int total=8;  
                        if(page1==1){}  
                        else{  
                            page1=page1-1;  
                            page1=(page1*total)+1;  
                            
                        } 
                       Object obj=session.getAttribute("cat");
                  Userdao d=new Userdao();
                   
                  if(obj!=null)
                  {
                      cat=obj.toString();
                   List<User>mylist1=d.QsearchAll(page1,total);
                
                       for(User U:(mylist1))
                       { 
                          
                           
                 %> 
             <li>
            <article>
              <header>
                <figure class="avatar"><img src="images/avatar.png" alt=""></figure>
                <address>
                By <a href="#">
                    <%
                        out.println(""+U.getFname().toUpperCase());
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
                          out.println(U.getQstn());
                          %>
                  </p>
              </div>
            </article>
                  </li>
                    <%
                           if(cat.equals("experts")) 
                           {
                     %>
                     <form name="frm" method="get" action="answ.jsp">
               <div align="right">
                   
                   <%
                       out.println("<input type=hidden name=hdn value="+U.getQstn().replaceAll("\\s","")+"/>");
                     out.println("<input type=submit name=submit value=Reply onclick={document.frm.hdn.value=this.value;document.frm.submit();}>");
                    %>
                    &nbsp;
                   <%
                     out.println("<input type=submit name=submit value=View Answers onclick={document.frm.hdn.value=this.value;document.frm.submit();}>");
                    %>
                             </div>
                  </form>
                   <%
                           }
                       else
                       {
                   %>
                   <form name="frm" method="get" action="answ.jsp">
                   
                         <div align="right">
                      <%
                            out.println("<input type=hidden name=hdn value="+ U.getQstn().replaceAll("\\s","")+"/>");  
                     out.println("<input type=submit name=submit value=View Answers onclick={document.frm.hdn.value=this.value;document.frm.submit();}>");
                    %>
                        </div>
                        </form>
                             
                   <%
                            }
                        }   
                     }
                      else
                        {
                          out.println("<br><br><font size=6 color=darkgrey>Please Login first - >></font><a href=login.jsp><font size=6 color=red> Login </font></a>");
                        }
                    }
                  catch(Exception e)
                  {
                      out.println(e);
                  }
             %>
                  
        </ul>
        
      </div>
      <!-- ################################################################################################ -->
    </div>
             <%
                 
                 int a=0,pages,mod1;
                 try
                 {
                      a=Integer.parseInt(session.getAttribute("count").toString());
                  pages=a/8;
                  mod1=a%8;
                  if(mod1>0)
                  pages=pages+1;
             %>
             
             <%
                  int p=Integer.parseInt(request.getParameter("page"));
             %>
            <div class="pagination">
      <ul>
       
        <%
              if(p>1)
                {
                   out.println("<li class=prev><a href=qa.jsp?page="+(p-1)+">&laquo; Previous</a></li>");
                }
            for(int i=1;i<=pages;i++)
            {
        
            out.println("<li><a href=qa.jsp?page="+ i +">");
        %>
                
            <%
                  out.println(""+i);                

            %>
             </a></li>
        
        <%
            }
             
             out.println("<li class=next><a href=qa.jsp?page="+(p+1)+">Next &raquo;</a></li>");
                 }
               catch(Exception e)        
                {
                    
                }
        %>
            
        
      </ul>
    </div>
                       
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>   
</div>
<%
    try{
        String ques=null,ans=null,time=null,name=null;
            ques=request.getParameter("comment");
            name=session.getAttribute("name").toString();
            User U=new User();
             
            long milis=System.currentTimeMillis();
            Date date=new Date(milis);
            time=date.toString();
            
            if((ques!=null)&&(time!=null))
        {
            U.setFname(name);
           U.setQstn(ques);
           U.setTim(time);
            Userdao ud3=new Userdao();
            if(ud3.insertQuestion(U))
            {
                response.sendRedirect("qa.jsp?page=1");
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

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

</body>
</html>
<%@include file="footer.jsp" %>