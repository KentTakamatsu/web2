<?php
session_start();
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$gid = $_SESSION["gid"];
$sql = $PDO->prepare("UPDATE game1 SET nowticket= nowticket+1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

$sql = $PDO->prepare("UPDATE game1 SET ticket = ticket-1 WHERE :gId");
$sql->bindValue(':gId',$gid,PDO::PARAM_STR);
$sql->execute();

$sql = $PDO->prepare("SELECT nowticket FROM game1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
  $nowticket = $data["nowticket"];
}

if($nowticket>5){
$sql = $PDO->prepare("UPDATE game1 SET talk =talk+1,nowticket=1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();
}
// リダイレクトの実行
header( "Location: http://msyoka.jp/gree/mypage.php" ) ;

// 終了
exit ;
?>













