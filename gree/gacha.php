<?php
$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');
$selectdb =mysql_select_db('gree_test_game',$link);

$result = mysql_query('select * from gacha_mst inner join gacha_cate_mst on gacha_mst.cateID = gacha_cate_mst.cateID inner join paymentItems on gacha_mst.itemId = paymentItems.itemid inner join gacha_proba_mst on gacha_mst.probaID = gacha_proba_mst.probaID');

$max = 0;

$gachaq = array();
while($row = mysql_fetch_array($result)){
$gachaq[] = $row;

}

foreach ($gachaq as $key => $value) {

  $max += $value["proba"];
}

//while ($data = mysql_fetch_array($result)) {
  //echo $data['proba'];
//  $max += $data['proba'];
//}
//echo $max;


$rate = mt_rand(0, $max-1);

foreach ($gachaq as $key => $value) {

  $max -= $value["proba"];
  if($max <= $rate)
  {
    return 1;
  }
var_dump($value["itemName"]);
}





//echo  $rate;
echo('<pre>');
var_dump($gachaq);
echo('</pre>');

$link = mysql_close($link);
?>
