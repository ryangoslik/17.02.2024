<?php require_once ("connect.php"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document1</title>
</head>
<body>'
    

<?php
$all_records = $conn->query("select * from programista inner join programista.idp = technologie.idp where id = 1;");
while(list()=mysqli_fetch_row($all_records)){
    echo("<li><b></b>,<i></i></li>");
}
?>
    
</body>
</html>