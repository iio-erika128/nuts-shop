<?php require '../header.php'; ?>
<?php
$pdo=new PDO('mysql:host=localhost;dbname=IE_shop;charset=utf8', 
'iio_erika', 'Asdf3333-');
foreach ($pdo->query('select * from product') as $row){
	echo '<p>';
	echo $row['id'],':';
	echo $row['name'],':';
	echo $row['price'],':';
	echo '</p>';
}
?>
<?php require '../footer.php'; ?>