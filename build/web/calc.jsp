<%-- 
    Document   : calc
    Created on : Apr 29, 2017, 7:26:21 PM
    Author     : HARSH
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="no-js">
    
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
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
          <link rel="stylesheet" href="css/cstyle.css">
	<link rel="stylesheet" href="folder/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="folder/css/style.css"> <!-- Resource style -->
	<script src="folder/js/modernizr.js"></script> <!-- Modernizr -->
  	
	<title>Responsive Tabbed Navigation | CodyHouse</title>
</head>
<body>
   
<header>
	<h1>Tax Calculator</h1>
</header>
<div class="cd-tabs">
	<nav>
		<ul class="cd-tabs-navigation">
			<li><a data-content="inbox" class="selected" href="#0">Basic Info</a></li>
			<li><a data-content="income" href="#0">Income</a></li>
			<li><a data-content="gallery" href="#0">Deduction</a></li>
<!--			<li><a data-content="store" href="#0">Store</a></li>
			<li><a data-content="settings" href="#0">Settings</a></li>
			<li><a data-content="trash" href="#0">Trash</a></li>-->
		</ul> <!-- cd-tabs-navigation -->
	</nav>
	<ul class="cd-tabs-content">
            <li data-content="inbox" class="selected" id="c1">
			<fieldset>
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
                        <fieldset>
         <font color="black">
          <label for="mail">Gender:<br><br>
              <input type="radio" id="male" value="male" name="gender">Male  </label>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <label>  <input type="radio" id="female" value="female" name="gender">Female<br><br><br></label></font>
          
                        </fieldset>
          <label for="residence"><font color="black">Residential Status:</font></label>
         <select id="res" name="res">
            <option value="Resident">Resident</option>
            <option value="Non-Resident">Non-Resident</option>
         </select>         </form>
                   </fieldset>
                    
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" >Next</button>
          </li>

         
          <li data-content="income" id="c2">
              <fieldset >
  
                  	<form id="form2">
                     <label for="salary"><font color="black">Salary</font></label>
                   <input type="text" name="salary" id="salary">   
                  
                   <label for="house"><font color="black">House property</font></label>
                  <input type="text" name="house" id="house">
                  
                  <label for="gains"><font color="black">Capital Gains</font></label>
                  <input type="text" name="gains" id="gains">
                  
                  <label for="other"><font color="black">Other sources</font></label>
                  <input type="text" name="other" id="other">
                  <br>
                  <br>
                <button type="submit" >Back</button>
                 <a href="#0"><button type="submit"  >Next</button></a>
                        </form>
              </fieldset>
		</li>

                
                
		<li data-content="gallery">
            <form id="form3">
            <label for="tds"><font color="black">TDS Credit Utilized</font></label>
                  <input type="text" name="tds" id="tds">
                  
            <label for="relief"><font color="black">Relief</font></label>
                  <input type="text" name="relief" id="relief">
                  <br><br><br><br>
           
                  <a href="#0"><button type="submit" >Submit</button></a>
            </form>      
		</li>
<%
//		 <li data-content="store">
//			<p>Store Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum recusandae rem animi accusamus quisquam reprehenderit sed voluptates, numquam, quibusdam velit dolores repellendus tempora corrupti accusantium obcaecati voluptate totam eveniet laboriosam?</p>
//
//			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi, enim, pariatur. Ab assumenda, accusantium! Consequatur magni placeat quae eos dicta, cum expedita sunt facilis est impedit possimus dolorum sequi nostrum nobis sit praesentium molestias nulla laudantium fugit corporis nam ut saepe harum ipsam? Debitis accusantium, omnis repudiandae modi, distinctio illo voluptatibus aperiam odio veritatis, quam perferendis eaque ullam. Temporibus tempore ad voluptates explicabo ea sit deleniti ipsum quos dolores tempora odio, ab corporis molestiae, eaque optio, perferendis! Cumque libero quia modi! Totam magni rerum id iusto explicabo distinctio, magnam, labore sed nemo expedita velit quam, perspiciatis non temporibus sit minus voluptatum. Iste, cumque sunt suscipit facere iusto asperiores, ullam dolorum excepturi quidem ea quibusdam deserunt illo. Nesciunt voluptates repellat ipsam.</p>
//		</li>
//
//		<li data-content="settings">
//			<p>Settings Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam nam magni, ullam nihil a suscipit, ex blanditiis, adipisci tempore deserunt maiores. Nostrum officia, ratione enim eaque nihil quis ea, officiis iusto repellendus. Animi illo in hic, maxime deserunt unde atque a nesciunt? Non odio quidem deserunt animi quod impedit nam, voluptates eum, voluptate consequuntur sit vel, et exercitationem sint atque dolores libero dolorem accusamus ratione iste tenetur possimus excepturi. Accusamus vero, dignissimos beatae tempore mollitia officia voluptate quam animi vitae.</p>
//
//			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique ipsam eum reprehenderit minima at sapiente ad ipsum animi doloremque blanditiis unde omnis, velit molestiae voluptas placeat qui provident ab facilis.</p>
//		</li>
//
//		<li data-content="trash">
//			<p>Trash Lorem ipsum dolor sit amet, consectetur adipisicing elit. Optio itaque a iure nostrum animi praesentium, numquam quidem, nemo, voluptatem, aspernatur incidunt. Fugiat aspernatur excepturi fugit aut, dicta reprehenderit temporibus, nobis harum consequuntur quo sed, illum.</p>
//
//			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima doloremque optio tenetur, natus voluptatum error vel dolorem atque perspiciatis aliquam nemo id libero dicta est saepe laudantium provident tempore ipsa, accusamus similique laborum, consequatur quia, aut non maiores. Consectetur minus ipsum aliquam pariatur dolorem rerum laudantium minima perferendis in vero voluptatem suscipit cum labore nemo explicabo, itaque nobis debitis molestias officiis? Impedit corporis voluptates reiciendis deleniti, magnam, fuga eveniet! Velit ipsa quo labore molestias mollitia, quidem, alias nisi architecto dolor aliquid qui commodi tempore deleniti animi repellat delectus hic. Alias obcaecati fuga assumenda nihil aliquid sed vero, modi, voluptatem? Vitae voluptas aperiam nostrum quo harum numquam earum facilis sequi. Labore maxime laboriosam omnis delectus odit harum recusandae sint incidunt, totam iure commodi ducimus similique doloremque! Odio quaerat dolorum, alias nihil quam iure delectus repellendus modi cupiditate dolore atque quasi obcaecati quis magni excepturi vel, non nemo consequatur, mollitia rerum amet in. Nesciunt placeat magni, provident tempora possimus ut doloribus ullam!</p>
//		</li>
//                                %>
	</ul> <!-- cd-tabs-content -->
</div> <!-- cd-tabs -->


<script src="folder/js/jquery-2.1.1.js"></script>
<script src="folder/js/main.js"></script> <!-- Resource jQuery -->


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
//                out.println(e);
            }
            %>
  
</body>
</html>
<%@include file="footer.jsp" %>