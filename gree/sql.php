<?php
$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');
$selectdb =mysql_select_db('gree_test_game',$link);


$sql =mysql_query("INSERT INTO paymentItems VALUES('0007','体力回復MAX','150','1','http://msyoka.jp/gree/pic/shop_item/medicine-bottle003.png','体力を全回復させる薬です')");


$link = mysql_close($link);

?>
