<?php require '../header.php'; ?>
<?php
$pdo=new PDO('mysql:host=localhost;dbname=IE_shop;charset=utf8', 
'iio_erika', 'Asdf3333-');
foreach ($pdo->query('select * from product') as $row){
   echo"<p>$row[id]:$row[name]:$row[price]</p>";
}
?>
<?php require '../footer.php'; ?>