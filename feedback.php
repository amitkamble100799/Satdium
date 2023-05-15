<?php

try {
    $db = new mysqli("localhost","root","","booking");
} catch (Exception $exc) {
    echo $exc->getTraceAsString();
}

if(isset($_POST['f_name']) && isset($_POST['f_name']) && isset($_POST['l_name']) && isset($_POST['email']) && isset($_POST['experience'])){

$f_name = $_POST['f_name'];
$l_name = $_POST['l_name'];
$email = $_POST['email'];
$experience = $_POST['experience'];

$is_insert = $db->query("INSERT INTO `feedback`(`f_name`, `l_name`, `email`, `experience`) VALUES ('$f_name','$l_name','$email','$experience')");
if($is_insert == TRUE)
    echo"<div id = 'formt'><h2>Thanks,your response has been submitted!</h2>
         <p class='link'>Click here to <a href='bookings.php'>Go Back</a> again.</p>
         </div>";
                 
exit();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style4.css" />
    <title>Feedback</title>
</head>
<body>

<form method="post" action="">
    <input type="text" name="f_name" placeholder="First Name">
    <input type="text" name="l_name" placeholder="Last Name"><br><br>
    <input type="email" name="email" placeholder="Email"><br><br>
    <textarea name="experience" placeholder="Rate your experience"></textarea><br>
    <input type ="submit" value="Submit Response">
    </form>
</body>
</html>