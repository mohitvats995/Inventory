<html>
<head>
<title> Add Company Form </title>   
    <link rel="stylesheet" type="text/css" href="css/add_company.css">
</head>
<body>
<script>
function confirm(){
	var emails = document.getElementById("emails").value;
	var mobileNumber = document.getElementById("mobileNumber").value;
	/*email validation*/
	if(emails == "")
	{
		document.getElementById("emailiderror").innerHTML =" ** Please fill the email id field";
		return false;
	}
	
	if(emails.indexOf('@') <= 0 )
	{
		document.getElementById("emailiderror").innerHTML =" ** @ Invalid Position";
		return false;
	}

	if((emails.charAt(emails.length-4)!='.') && (emails.charAt(emails.length-3)!='.'))
	{
		document.getElementById("emailiderror").innerHTML =" ** . Invalid Position";
		return false;
	}
	
	
	/*mobile number validation*/
	if(mobileNumber == "")
	{
		document.getElementById("mobileno").innerHTML =" ** Please fill the mobile Number field";
		return false;
	}
	if(isNaN(mobileNumber))
	{
		document.getElementById("mobileno").innerHTML =" ** user must write digits only not characters";
		return false;
	}
	if(mobileNumber.length!=10)
	{
		document.getElementById("mobileno").innerHTML =" ** Mobile Number must be 10 digits only";
		return false;
	}
	


}






</script>




    <div id="login-box">
      <div class="left-box">
	  <form action="addcompany"  onsubmit="return confirm()"  method="post">
	  <!--   <img src="Signup-logotype-V1.png" class="avatar"> -->
        
 
		  <input type="text" name="companyname" placeholder="Company Name" autocomplete="off"/>
		  
						
						
		  				
		  
          <input type="text"  name="gstin" placeholder="GSTIN" autocomplete="off"/>
		  
						
						
		  <input type="mobile" id="mobileNumber"  name="mobile" autocomplete="off" placeholder="Mobile number"/>
		  <span id="mobileno" style="color:red"> </span>
		  <br>
 	  
		  
		  
		
		  
		  
		  
		  
		  <input type="text" id="emails" name="email" placeholder="Email" autocomplete="off"/>
		  <span id="emailiderror" style="color:red;"></span><br>
	      
<input type="text" name="address" placeholder="Company Address" autocomplete="off" required/>
		 
						
          <input type="submit" name="signup-button" value="ADD"/>
		  </form>
		</div>
    </div>
</body>    
</html>