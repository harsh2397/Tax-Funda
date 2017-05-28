<%-- 
    Document   : login
    Created on : Apr 20, 2017, 8:46:13 PM
    Author     : HARSH
--%>
<%@page session="true" %>
<%@page import="model.User"%>
<%@page import="dao.Userdao"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Login</title>
    <style type="text/css">
div#container
{
	position:relative;
	width: 1366px;
	margin-top: 0px;
	margin-left: auto;
	margin-right: auto;
	text-align:left; 
}
body {text-align:center;margin:0}

    
.header{
	position: absolute;
	top: calc(50% - 305px);
	left: calc(50% - 110px);
	z-index: 2;
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 50px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

    </style>
    
    
    
        <link rel="stylesheet" href="css/style.css">

     <script language="javascript">
        function validate()
        {
            var USER,PASS;
            USER=document.getElementById("pann").value;
            PASS=document.getElementById("pass").value;
            
                     if((USER=="")&&(PASS==""))
                    {
                        alert("PAN number and Password field can't left blank");
                        document.getElementById("pann").focus();
                          return false;
                    }
               
                
                    if(USER=="")
                    {
                        alert("PAN field can't left blank");
                        document.getElementById("pann").focus();
                        return false; 
                    }
                    if(PASS=="")
                    {
                        alert("Password field can't left blank");
                        document.getElementById("pass").focus();
                        return false;
                    }
                  
         }
               
</script>
    
    
  </head>

  <body class="align">
      
      
           
      <div class="header">
		<br><br><br><br>
              <div>Tax Funda</div>
		</div>

<div id="container">
    
    		<br><br><br><br><br><br><br><br>

  <div class="site__container">

    <div class="grid__container">

      <form  method="post" action="login.jsp" class="form form--login">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">PAN number</span></label>
          <input id="pann" type="text" name="pann" class="form__input" placeholder="PAN number"/>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="pass"  type="password" name="pass" class="form__input" placeholder="Password"/>
        </div>

        <div class="form__field">
            <input type="submit" onclick="return validate();"  value="Sign In"/>
        </div>

      </form>

      <p class="text--center">Not a member? <a href="signup.jsp">Sign up now</a><span class="fontawesome-arrow-right"></span></p>
   </div>

  </div>
</div>
</body>
    
</html>
<%
           
          String Pann=null,Pass=null;

                    
          Pann=request.getParameter("pann");
          Pass=request.getParameter("pass");          
                Userdao ed=new Userdao();
        
            if((Pann!=null)&&(Pass!=null)) // EXISTING USER
            {
                        try
                    {
                      if(ed.checkLogin(Pann,Pass))
                      {
                          User A=ed.search(Pann);
                          String Name=A.getFirstname();
                          String cat=A.getCategory();
                          session.setAttribute("name",Name);
                          session.setAttribute("pann",Pann);
                          session.setAttribute("pass",Pass);
                          session.setAttribute("cat",cat );
                          response.sendRedirect("homepages.jsp");
                      }
                      else
                      {
                 %>
                 <div style="position: absolute; left: 510px; top: 450px;">
                 <%
                          out.println("<font size=5 color=white>invalid Pan number or password</font>");
                  %>
                  </div>
                  <%
                      }
                    }
                        catch(Exception e)
                       {
                          out.println(e);
                       }

           }
          
%>
     
    
    
    
  