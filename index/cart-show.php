<?php session_start(); ?>
<?php require 'header.php'; ?>
<?php require 'menu.php'; ?>
<?php
require 'cart.php';


/* JavaScript出力開始 */
echo <<<EOM
<script type="text/javascript">
$(function(){
  $('#my_button').on('click', function(){
    alert('Button is clicked');
  });
});
</script>

EOM;
/** JavaScript出力終了 */
?>
<?php require 'footer.php'; ?>