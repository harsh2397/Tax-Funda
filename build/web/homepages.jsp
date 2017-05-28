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
<title>TAXFUNDA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript">
            function noback()
            {
                window.history.forward();
            }
            </script>
</head>
<body id="top" onload="noback();">
    <div style="left: 10px;">
        
        
        
        <div class="wrapper bgded overlay" style="background-image:url('images/serv.jpg');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article class="introtxt">
      <h2 class="heading">Tax Funda</h2>
      <p>Providing an easy and ideal solution to Indian tax payer. </p>
     
          <%  try
                 {
                      String Pann=null,Pass=null,Name=null;
                            Pann=session.getAttribute("pann").toString();
                            Pass=session.getAttribute("pass").toString();

       
               if((Pann!=null) && (Pass!=null))
               {
               }
               else
               {
                      
                }
               }
                 catch(Exception e)
                         {
            %>
                        <footer>
                 <ul class="nospace inline pushright">
                   <li><a class="btn" href="signup.jsp">Register</a></li>
                   <li><a class="btn inverse" href="login.jsp">Login</a></li>
                 </ul>
                       </footer>

            <%          
                         }
         %>       
   
      
    </article>
    <!-- ################################################################################################ -->
  </div>
        </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3" style="left:10px">
    <div class="hoc container clear">  
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>Quick Link</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href="#c1">Tax - Definition</a></li>
          <li><a href="#c2">Types of taxes</a></li>
          <li><a href="#c3">Direct Tax</a>
            <ul>
              <li><a href="#c4">Income Tax Act</a></li>
              <li><a href="#c5">Wealth Tax Act</a></li>
              <li><a href="#c6">Expenditure Tax Act</a></li>
              <li><a href="#c7">Interest Tax Act</a></li>
            </ul>
          </li>
          <li><a href="#c8">Indirect Tax</a>
            <ul>
              <li><a href="#c9">Sales Tax</a></li>
              <li><a href="#c10">Service Tax</a></li>
              <li><a href="#c11">GST (Goods and Service Tax)</a></li>
              <li><a href="#c12">Value Added Tax</a></li>
              <li><a href="#c13">Custom Duty & Octroi</a></li>
              <li><a href="#c14">Excise Duty</a></li>
            
          </li>
          <li><a href="#c15">Income Tax slab for Male/Female under 60 yrs of age</a></li>
          <li><a href="#c16">Income Tax slab for Senior Citizen</a></li>
          
        </ul>
      </nav>
      
      
      <!-- ################################################################################################ -->
      <br><a href="images/various_tax.png"><img src="images/various_tax.png" alt="" width="130"></a>
    
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="content three_quarter" > 
      <!-- ################################################################################################ -->
      <h1 id="c1">What is Tax? </h1>
      <img class="imgr borderedbox inspace-5" src="images/tax1.jpg"  alt="">
      <p>Taxes are levied by governments on their citizens to generate income for undertaking projects to boost the economy of the country and to raise the standard of living of its citizens. The authority of the government to levy tax in India is derived from the Constitution of India, which allocates the power to levy taxes to the Central and State governments. All
          taxes levied within India need to be backed by an accompanying law passed by the Parliament or the State Legislature.</p>
      
      <h1 id="c2">Types of tax : </h1>
      <img class="imgl borderedbox inspace-5" src="images/jkn (2).jpg" alt="">
      <p>Taxes are of two distinct types, direct and indirect taxes. 
          The difference comes in the way these taxes are implemented.
          Some are paid directly by you, such as the dreaded income tax, wealth tax, corporate tax etc. 
          while others are indirect taxes, such as the value added tax, service tax, sales tax, etc.
          <br></p>
      <p>   1. Direct Taxes</p>
      <p>   2. Indirect Taxes</p>
      <br>
      <h1 id="c3">1) Direct Tax:</h1>
  <p>     Direct tax, as stated earlier, are taxes that are paid directly by you.
      These taxes are levied directly on an entity or an individual and cannot be transferred onto anyone else. One of the bodies that overlooks these direct taxes is the <b><a href="http://www.dor.gov.in/cbdt">Central Board of Direct Taxes (CBDT)</a></b> which is a part of the Department of Revenue.
It has, to help it with its duties, the support of various acts that govern various aspects of direct taxes.</p>
  <br>
  Some of these acts are:
  <ul>
      <li> <font color="blue" id="c4"> Income Tax Act: </font></li></ul>
      <p> This is also known as the IT Act of 1961 and sets the rules that govern income tax in India.
          The income, which this act taxes, can come from any source like a business, owning a house or property, gains received from investments and salaries, etc.
          This is the act that defines how much the tax benefit on a fixed deposit or a life insurance premium will be. 
          It is also the act that decides how much of your income can you save through investments and what the slab for the income tax will be.
      </p>
  
      <ul>
          <li> <font color="blue" id="c5"> Wealth Tax Act: </font></li></ul>
      <p> The Wealth Tax Act was enacted in 1951 and is responsible for the taxation related to the net wealth of an individual,
          a company or a Hindu Unified Family.
          The simplest calculation of wealth tax was that if the net wealth exceeded Rs. 30 lakhs, then 1% of the amount that exceeded Rs. 30 lakhs was payable as tax. 
          It was abolished in the budget announced in 2015. It has since been replaced with a surcharge of 12% on individuals that earn more than Rs. 1 crore per annum. 
          It is also applicable to companies that have a revenue of over Rs. 10 crores per annum. The new guidelines drastically increased the amount the government would collect in taxes as opposed the amount they would collect through the wealth tax.
      </p>
      
      <ul>
          <li> <font color="blue" id="c6"> Expenditure Tax Act: </font></li></ul>
      <p> This is an act that came into existence in 1987 and deals with the expenses you, as an individual, may incur while availing the services of a hotel or a restaurant.
          It is applicable to all of India except Jammu and Kashmir.It states that certain expenses are chargeable under this act if they exceed Rs. 3,000 in the case of a hotel and all expenses incurred in a restaurant.
      </p>
      
      <ul>
          <li> <font color="blue" id="c7"> Interest Tax Act: </font></li></ul>
      <p> The Interest Tax Act of 1974 deals with the tax that was payable on interest earned in certain specific situations. 
          In the last amendment to the act it was stated that the act does not apply to interest that was earned after March 2000.
      </p>
      <h1 id="c8">2) Indirect Tax:</h1>
      <p> By definition, indirect taxes are those taxes that are levied on goods or services. 
          They differ from direct taxes because they are not levied on a person who pays them directly to the government, 
          they are instead levied on products and are collected by an intermediary, the person selling the product. 
          The most common examples of indirect tax Indirect tax can be VAT (Value Added Tax), Taxes on Imported Goods, Sales Tax, etc.
          These taxes are levied by adding them to the price of the service or product which tends to push the cost of the product up.
      </p>
      <br>
      some of these acts are :
      <br>
      <ul>
          <li> <font id="c9" color="blue"> Sales Tax: </font></li></ul>
      <p>Like sales tax is added to the price of goods sold in India, so is service tax added to services provided in India. 
          In the reading of the budget 2015, it was announced that the service tax will be raised from 12.36% to 14%. 
          It is not applicable on goods but on companies that provide services and is collected every month or once every quarter based on how the services are provided. If the establishment
          is an individual service provider then the service tax is paid only once the customer pays the bills however,
          for companies the service tax is payable the moment the invoice is raised, irrespective of the customer paying the bill.
      </p> 
      <ul>
          <li> <font color="blue" id="c10"> Service Tax: </font></li></ul>
      <p>Like sales tax is added to the price of goods sold in India, so is service tax added to services provided in India.
          In the reading of the budget 2015, it was announced that the service tax will be raised from 12.36% to 14%. 
          It is not applicable on goods but on companies that provide services and is collected every month or once every quarter based on how the services are provided.
          If the establishment is an individual service provider then the service tax is paid only once the customer pays the bills however, 
          for companies the service tax is payable the moment the invoice is raised, irrespective of the customer paying the bill.
      </p>
      <ul>
          <li> <font color="blue" id="c11"> GST (Goods and service tax): </font></li></ul>
       <p>The Goods and Services Tax (GST) is the largest reform in India?s indirect tax structure since the market started opening up about 25 years ago.
           The GST is a consumption-based tax, as it is applicable where consumption takes place.
           The GST is levied on value-added goods and services at each stage of consumption in the supply chain. 
           The GST payable on the procurement of goods and services can be set off against the GST payable on the supply of goods and services, 
           the merchant will pay the applicable GST rate but can claim it back through the tax credit mechanism.
      </p>
      
      <ul>
          <li> <font color="blue" id="c12"> Value Added Tax: </font></li></ul>
      <p>VAT, also known as commercial tax is not applicable on commodities that are zero rated (eg. food and essential drugs) or those that fall under exports.
         This tax is levied at all the stages of the supply chain, right from the manufacturers, dealers and distributors to the end user.
         The value added tax is a tax that is levied at the discretion of the state government and not all states implemented it when it was first announced. 
         The tax is levied on various goods sold in the state and the amount of the tax is decided by the state itself. For example in Gujrat the government split all the good into various categories called schedules. 
         There are 3 schedules and each schedule has its own VAT percentage. For Schedule 3 the VAT is 1%, for schedule 2 the VAT is 5% and so on. 
         Goods that have not been classified into any category have a VAT of 15%.
      </p>
      
        <ul>
            <li> <font color="blue" id="c13"> Custom duty & Octroi : </font></li></ul>
      <p>When you purchase anything that needs to be imported from another country, a charge is applied on it and that is the customs duty.
          It applies to all the products that come in via land, sea or air. Even if you bring in products bought in another country to India, a customs duty can be levied on it.
          The purpose of the customs duty is to ensure that all the goods entering the country are taxed and paid for. 
          Just as customs duty ensures that goods for other countries are taxed, octroi is meant to ensure that goods crossing state borders within India are taxed appropriately. 
          It is levied by the state government and functions in much the same way as customs duty does.
      </p>
      <ul>
      <li> <font color="blue" id="c14"> Excise Duty : </font></li></ul>
      <p>This is a tax that is levied on all the goods manufactured or produced in India. 
          It is different from customs duty because it is applicable only on things produced in India and is also known as the Central Value Added Tax or CENVAT. 
          This tax is collected by the government from the manufacturer of the goods. It can also be collected from those entities that receive manufactured goods and employ people to transport the goods from the manufacturer to themselves
The Central Excise Rule set by the central government provide suggest that every person that produces or manufactures any 'excisable goods', or who stores such goods in a warehouse, will have to pay the duty applicable on such goods in.
Under this rule no excisable goods, on which any duty is payable, will be allowed to move without payment of duty from any place, where they are produced or manufactured.
      </p>
 
      <h1><font id="c15">Income Tax slab for Male/Female under 60 yrs of age :</font> </h1>
 
      <div class="scrollable">
     <table class="table table-curved">  
<tbody>
<tr>
<th>Income Tax Slab</th>
<th>Tax Rate</th>
</tr>
<tr>
<td>Income up to Rs. 2,50,000*</td>
<td>No Tax</td>
</tr>
<tr>
<td>Income from Rs. 2,50,000 - Rs. 5,00,000</td>
<td>10%</td>
</tr>
<tr>
<td>Income from Rs. 5,00,000 - Rs. 10,00,000</td>
<td>20%</td>
</tr>
<tr>
<td>Income more than Rs. 10,00,000</td>
<td>30%</td>
</tr>
<tr>
<td colspan="2">
Surcharge:
10% of income tax, where total income is between Rs. 50 lakhs and Rs.1 crore.
15% of income tax, where total income exceeds Rs. 1 crore.
</td>
</tr>
<tr>
<td colspan="2">
Cess: 3% on total of income tax + surcharge.
</td>
</tr>
<tr>
<td colspan="2">
* Income upto Rs. 2,50,000 is exempt from tax if you are less than 60 years old.
</td>
</tr>
</tbody>
</table>
  </div>
      

      <h1><font id="c16">Income Tax slab for Senior citizen :</font> </h1>

      <div class="scrollable">
     <table class="table table-curved">  
<tbody>
<tr>
<th>Income Tax Slab</th>
<th>Tax Rate</th>
</tr>
<tr>
<td>Income up to Rs. 3,00,000*</td>
<td>No Tax</td>
</tr>
<tr>
<td>Income from Rs. 3,00,000 - Rs. 5,00,000</td>
<td>10%</td>
</tr>
<tr>
<td>Income from Rs. 5,00,000 - Rs. 10,00,000</td>
<td>20%</td>
</tr>
<tr>
<td>Income more than Rs. 10,00,000</td>
<td>30%</td>
</tr>
<tr>
<td colspan="2">
Surcharge:
10% of income tax, where total income is between Rs. 50 lakhs and Rs.1 crore.
15% of income tax, where total income exceeds Rs. 1 crore.
</td>
</tr>
<tr>
<td colspan="2">
Cess: 3% on total of income tax + surcharge.
</td>
</tr>
<tr>
<td colspan="2">
* Income upto Rs. 2,50,000 is exempt from tax if you are less than 60 years old.
</td>
</tr>
</tbody>
</table>
  </div>
            
      
          <!-- ################################################################################################ -->
    <!-- / main body -->
    </div>
    <div class="clear"></div>
    
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
</div>
    </body>
</html>
<%@include file="footer.jsp" %>