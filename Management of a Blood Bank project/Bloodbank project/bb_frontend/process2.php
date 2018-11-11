<?php

  echo $_POST['Receiver_name'];
  echo $_POST['Receiver_age'];
  echo $_POST['Receiver_bloodgroup'];
  echo $_POST['Receiver_district'];
  
  if (isset($_POST['gender'])){
	  $gender = $_POST['gender'];
     
	 echo("gender is:".$gender);
  }
      
  else{
	  echo("No gender selected");
  }
  
  
  ?>