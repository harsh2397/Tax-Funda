<!DOCTYPE html>
<%@page import="model.User"%>
<%@page import="dao.Userdao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style_1.css">
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
body {margin:0}
</style>

   <script language="javascript">
               
        function nvalidate()
        { 
            var fname,lname,email,age,pann,gender,pass,cpass,cat,phone="";
       
            fname=document.getElementById("fname").value;
            lname=document.getElementById("lname").value;
            email=document.getElementById("email").value;
            age=document.getElementsByName("age");
            pann=document.getElementById("pann").value;
            gender=document.getElementsByName("gender");
            phone=document.getElementById("phone").value;
            pass=document.getElementById("pass").value;
            cpass=document.getElementById("cpass").value;
            cat=document.getElementsByName("cat");
                    if((fname=="")&&(lname=="")&&(email=="")&&(pann=="")&&(phone=="")&&(pass=="")&&(cpass==""))
                    {
                        alert("Please fill all the fields");
                        document.getElementById("fname").focus();
                        return false;
                    }
                    if(fname=="")
                    {
                        alert("firstname field can't left blank");
                        document.getElementById("fname").focus();
                         return false;
                    }
                    if(lname=="")
                    {
                        alert("lastname field can't left blank");
                        document.getElementById("lname").focus();
                        
                         return false;
                    }
                    if(email=="")
                    {
                        alert("Email can't left blank");
                        document.getElementById("email").focus();
                         return false;
                    }
                    if(email!=null)
                    {
                      var atpos = email.indexOf("@");
                        var dotpos = email.lastIndexOf(".");
                        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
                        {
                            alert("Not a valid e-mail address");
                            document.getElementById("email").focus();
                            document.getElementById("email").select();
                            return false;
                        }
                    }
                    if((age[0].checked == false)&&(age[1].checked == false)&&(age[2].checked==false))
                    {
                          alert("Age category must be filled");
                           document.getElementById("email").focus();
                            return false;
                    }
                    
                     if(pann=="")
                    {
                        alert("PAN number can't left blank");
                        document.getElementById("pann").focus();
                         return false;
                    }
                          if(pann.length!=10)
                    {
                        alert("Not a valid PAN number");
                        document.getElementById("pann").focus();
                        document.getElementById("pann").select();
                        return false;
                    }
              
                    if (pann!="")
                 {            
                            var m;          
                            var panPat = /^[a-zA-Z]{3}[ABCFGHJLPT]{1}\d{4}[a-zA-Z]{1}$/i;
                            var code = "CPHFATBLJG",i;
                         var code_chk = pann.substring(3,4);
                    
//                            if (!panPat.test(pann))
//                            {
//                                alert("Invalid Pan Card No.");
//                                document.getElementById("pann").focus();
//                                document.getElementById("pann").select();
//                                
//                                return false;
//                             }
                             for(i=0;i<code_chk.length;i++)
                        {
                                m=code_chk.charAt(i);
                                if(-1==code.indexOf(m))
                                {
                                    alert("Invaild PAN Card No.");
                                document.getElementById("pann").focus();
                                document.getElementById("pann").select();
                                    return false;
                                }     
                        }
                 }
                   if((gender[0].checked == false)&&(gender[1].checked == false))
                    {
                          alert("Please fill the gender");
                           document.getElementById("pann").focus();
                            return false;
                    }
                    if(phone=="")
                    {
                        alert("Mobile can't left blank");
                        document.getElementById("phone").focus();
                         return false;
                    }
                    if(phone.length<10)
                    {
                        alert("Mobile field must contain atleast 10 digit");
                        document.getElementById("phone").focus();
                        document.getElementById("phone").select();
                        return false;
                    }
                    if(phone!="")
                    {
                        var m;
                        var valid="0123456789",i;
                        for(i=0;i<phone.length;i++)
                        {
                                m=phone.charAt(i);
                                if(-1==valid.indexOf(m))
                                {
                                    alert("Only numbers are allowed");

                                    document.getElementById("phone").focus();
                                   document.getElementById("phone").select();
                                     return false;
                                }     
                        }
                    }
                    if(pass=="")
                    {
                        alert("Password can't left blank");
                        document.getElementById("pass").focus();
                         return false;
                    }
                    if(pass.length<8)
                    {
                   
                        alert("Password must be atleast of 8 characters");
                        document.getElementById("pass").focus();
                        document.getElementById("pass").select();
                        return false;
                    }
                    
                    if(cpass=="")
                    {
                        alert("Confirm password can't left blank");
                        document.getElementById("cpass").focus();
                         return false;
                    }
                     if(pass!=cpass)
                    {
                          alert("Confirm password did not match");

                                    document.getElementById("cpass").focus();
                                   document.getElementById("cpass").select();
                                     return false;
                                
                    }
                    
                   
                
                                
                            
        }
        
        
        
    </script>

  
</head>


    <body>

      <form  method="post" action="signup.jsp">
      
        <h1>Sign Up</h1>
        <fieldset>
          <legend><span class="number">1</span>Your basic info</legend>
          <br>
         <label for="fname">First Name:</label>
          <input type="text" id="fname" name="fname">
          
          <label for="lname">Last Name:</label>
          <input type="text" id="lname" name="lname">
           
          <label for="mail">Email:</label>
          <input type="email" id="email" name="email">
          
          <label>Age:</label>
          <input type="radio" id="under_18" value="under_18" name="age"><label for="under_18" class="light">Under 18</label><br>
          <input type="radio" id="18-60" value="18-60" name="age"><label for="18-60" class="light">Between 18-60</label><br>
          <input type="radio" id="above 60" value="above 60" name="age"><label for="above_60" class="light">Above 60</label><br><br><br>
          
          
        
          <label for="pann">PAN number:</label>
          <input type="text"  style="text-transform:uppercase" name="pann" id="pann"  >
          
          <label for="gender"> Gender: </label>
          <input type="radio" id="male" value="male" name="gender"><label for="male" class="light">Male</label><br>
          <input type="radio" id="female" value="female" name="gender"><label for="female" class="light">female</label><br><br><br>
         
          <label for="phone"> Mobile:</label>
          <input type="text" name="phone" id="phone">
          
           <label for="password">Password:</label>
           <input type="password" id="pass" name="pass">
          
           <label for="password">Confirm Password:</label>
           <input type="password" id="cpass" name="cpass">
          
          <label for="job">Category:</label>
        <select id="job" name="cat">
            
            <option value="taxpayer">Tax payer</option>
            <option value="experts">Experts</option>
            <option value="others">Others</option>
        </select>
        
        </fieldset>


        <button type="submit" onclick="return nvalidate();" >Sign Up</button>
      </form>
      
    </body>
</html>
  
  
       <%
           try
          {
          String fname=null,lname=null,pann=null;
          String pass=null,category=null,email=null,gender=null;
          long phn;
          String age=null;
          
              fname=request.getParameter("fname");
              lname=request.getParameter("lname");
              email=request.getParameter("email");
             
              pann=request.getParameter("pann");
              gender=request.getParameter("gender");
              age=request.getParameter("age");

              pass=request.getParameter("pass");
              category=request.getParameter("cat");
                User ca= new User();
                if((pann!=null)&&(fname!=null))
                {
                        phn=Long.parseLong(request.getParameter("phone"));
                        ca.setFirstname(fname);
                        ca.setLastname(lname);
                        ca.setEmail(email);
                        ca.setAge(age);
                        ca.setPann(pann);
                        ca.setGender(gender);
                        ca.setPhn(phn) ;
                        ca.setPassword(pass) ;
                        ca.setCategory(category) ;

                       Userdao id=new Userdao();


                        if(id.insertUser(ca))
                        {

                            response.sendRedirect("login.jsp") ;
                            

                        }
                        else
                        {
                            out.println("<B><font color=red size=15 > ACCOUNT NOT CREATED  </font></B>");
                        }
                }
            }
           catch(Exception e)
           {
               out.println(e);
                            
           }
      %>