<?php

  echo $_POST['Donor_name'];
  echo $_POST['Donor_age'];
  echo $_POST['Donor_bloodgroup'];
  echo $_POST['Donor_district'];
  if (isset($_POST['gender'])){
	  $gender = $_POST['gender'];
     
	 echo("gender is:".$gender);
  }
      
  else{
	  echo("No gender selected");
  }
  
  
  ?>