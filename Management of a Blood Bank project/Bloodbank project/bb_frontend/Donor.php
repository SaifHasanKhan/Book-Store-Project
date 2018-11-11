<html>
<head>
   <title> <?php echo "Donor login"; ?> </title>
 </head>

<body>
 
 <h1>  Please enter your credentials </h1> 
  <hr>
 
<form method ="post" action="process.php"> 
 <label> Enter your name </label><br>
 <input type= "text" name="Donor_name" placeholder="type your name here"><br>
 <label> Enter your age </label><br>
 <input type= "text" name="Donor_age"><br>
 <label> Enter your Bloodgroup </label><br>
 <input type = "text" name="Donor_bloodgroup"><br>
 <label> Enter your District </label><br>
 <input type= "text" name="Donor_district"><br> 
 <h1> Choose your gender: <br><br> </h1>
  <p>
  male: <input type="radio" name="gender" value="male"><br>
 female: <input type="radio" name="gender" value="female"><br></p>
  <p>
  <input type="submit" name="submit" value="Choose Gender">
 
 </p>
 <input type="submit" value="login">
 
 
 </form>
 
 </body>
 
  </html>