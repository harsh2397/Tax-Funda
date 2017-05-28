<%-- 
    Document   : ccal
    Created on : May 12, 2017, 10:28:48 AM
    Author     : Ayush
--%>

<!doctype html>
<!DOCTYPE html>
<%@include file="header.jsp" %>
<html >
<head>
    <script language="javascript">
        function sender()
        {
            document.getElementById("form1").submit();
            document.getElementById("form2").submit();
            document.getElementById("form3").submit();
        }
        </script>
  <meta charset="UTF-8">
  <title>Tax Calculator</title>
  
  
      <link rel="stylesheet" href="css/style_1.css">
      <link rel="stylesheet" href="css1/style.css">

  
</head>

<body>
    <div class="wrapper row3">
        <main class="hoc container class">
            <h1>Tax Calculator<span>Easiest way to calculate</span></h1>
<ul class="tabs" role="tablist">
    <li>
        <input type="radio" name="tabs" id="tab1" style="display:none" checked />
        <label for="tab1" 
               role="tab" 
               aria-selected="true" 
               aria-controls="panel1" 
               tabindex="0">Basic Info</label>
        <div id="tab-content1" 
             class="tab-content" 
             role="tabpanel" 
             aria-labelledby="description" 
             aria-hidden="false">
            <div align="center">  
        <form id="form1">
                <label for="fname"><font color="black">Assessment year</font></label>
         <select id="job" name="job">
            <option value="2017-18">2017-18</option>
            <option value="2016-17">2016-17</option>
            <option value="2015-16">2015-16</option>
        </select> 
            
            <label for="lname"><font color="black">Category</font></label>
          <select id="cat" name="cat">
            <option value="taxpayer">upto 60</option>
            <option value="experts">60-80</option>
            <option value="others">Above 80</option>
        </select> 
            <font color="black">
            <label>Gender: </label>
              <input type="radio" id="male" value="male" name="gender" required/>Male
              <input type="radio" id="female" value="female" name="gender"/>Female<br>
              <br>
                </font>
                
          <label for="residence"><font color="black">Residential Status:</font></label>
         <select id="res" name="res">
            <option value="Resident">Resident</option>
            <option value="Non-Resident">Non-Resident</option>
         </select><br>
         <br>
        </form>
            </div>
        </div>
    </li>
  
    <li>
        <input type="radio" name="tabs" id="tab2" style="display:none"/>
        <label for="tab2"
               role="tab" 
               aria-selected="false" 
               aria-controls="panel2" 
               tabindex="0">Income</label>
        <div id="tab-content2" 
             class="tab-content"
             role="tabpanel" 
             aria-labelledby="specification" 
             aria-hidden="true">
            <div align="center">
                <form id="form2">
                     <label for="salary"><font color="black">Salary</font></label>
                   <input type="text" name="salary" id="salary">   
                  
                   <label for="house"><font color="black">House property</font></label>
                  <input type="text" name="house" id="house">
                  
                  <label for="gains"><font color="black">Capital Gains</font></label>
                  <input type="text" name="gains" id="gains">
                  
                  <label for="other"><font color="black">Other sources</font></label>
                  <input type="text" name="other" id="other">
                  <BR><br>
                  <br>
                  <br>
            </form>      
            </div>      
        </div>
    </li>
    
    <li>
        <input type="radio" name="tabs" id="tab3" style="display:none"/>
        <label for="tab3" 
               role="tab" 
               aria-selected="false" 
               aria-controls="panel3" 
               tabindex="0">Deduction</label>
        <div id="tab-content3" 
             class="tab-content" 
             role="tabpanel" 
             aria-labelledby="deduction" 
             aria-hidden="true">
            <div align="center">
                <form id="form3">
            <label for="tds"><font color="black">TDS Credit Utilized</font></label>
                  <input type="text" name="tds" id="tds">
                  
            <label for="relief"><font color="black">Relief</font></label>
                  <input type="text" name="relief" id="relief">
                  <br><br><br><br>
                </form>
            </div>
        </div>
    </li>
</ul>

            
            
<br style="clear: both;" />

<p class="link"> <a href="http://codepen.io/wallaceerick/pen/IGxim"></a></p>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <br><br><br><br><br><br><br><br>
  
        
    <br><br><br>
    <form action="ccal.jsp" method="post">
        <input type="submit" value="submit" name="submit" onclick="sender()">
            </form>
        </main>
    </div>
    
</body>
<%
        try
        {
				//income
				int tax=0;
				int salary=0,total=0;
              int house=0,gains=0,other=0;
              salary=Integer.parseInt(request.getParameter("salary"));
              house=Integer.parseInt(request.getParameter("house"));
              other=Integer.parseInt(request.getParameter("other"));
	      gains=Integer.parseInt(request.getParameter("gains"));
				//deduction//
				int relief=0,tds=0;
				tds=Integer.parseInt(request.getParameter("tds"));
			 relief=Integer.parseInt(request.getParameter("relief"));
				//basic info//
				String cat=null,gender=null,res=null;
				cat=request.getParameter("cat");
				gender=request.getParameter("gender");
				res=request.getParameter("res");
				
           if((salary!=0)&&(gender!=null)&&(cat!=null))
		   {
			   total=salary+house+other+gains-tds-relief;
               out.println(" "+ other);
            }
           else{
               out.println("hello");
           }
				   if(gender.equals("male"))
				   {
					   if(total>1000000)
					   {
						   total=total-1000000;
						tax=tax+(5000*10)+(2500*5)+(total*2/10);
					   }
					   else
					   {
						   if(total>500000)
						   {
							   total=total-500000;
							   tax=tax+2500*5+(total/10);
						   }
						   else
						   {
							   if(total>250000)
							   {
								   total=total-250000;
								   tax=tax+(total/20);
							   }
							   else
							   {
								   tax=0;
							   }
						   }
					   }
				   }
				   else
				   {
					   if(total>1000000)
					   {
						   total=total-1000000;
							tax=tax+5000*10+2000*5+(total/5);
					   }
					   else
					   {
						   if(total>500000)
						   {
							   total=total-500000;
							   tax=tax+2000*5+(total/10);
						   }
						   else
						   {
							   if(total>300000)
							   {
								   total=total-300000;
								   tax=tax+(total/20);
							   }
							   else
							   {
								   tax=0;
							   }
						   }
					   }
				   }
                                   out.println(""+tax);
        }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
            
</html>

<%@include file="footer.jsp" %>