<?php require '../header.php'; ?>
<?php require 'connect.php'; ?>
<div class="th">商品番号</div>
<div class="th">商品名</div>
<div class="th">商品価格</div>
<form action="edit3.php" method="post">
<input type="hidden" name="command" value="insert">
<div class="td0"></div>
<div class="td1"><input type="text" name="name"></div>
<div class="td"><input type="text" name="price"></div>
<div class="td"><input type="submit" value="追加"></div>
</form>
<?php require '../footer.php'; ?>