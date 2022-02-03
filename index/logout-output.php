<?php session_start();?>
<?php require '../header.php'; ?>
<?php require_once 'connect.php'; ?>
<?php
if (isset($_SESSION['customer'])) {
	unset($_SESSION['customer']);
	echo 'ログアウトしました。';
} else {
	echo 'すでにログアウトしています。';
}
?>
<?php require '../footer.php'; ?>
