<?php
session_start();
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$gid = $_SESSION["gid"];
$param= "0001";

$sql = $PDO->prepare("DELETE FROM Paymentlog WHERE itemId=:itemId LIMIT 1");

$sql->bindValue(':itemId',$param,PDO::PARAM_STR);

$sql->execute();

$sql = $PDO->prepare("UPDATE game1 SET ticket = ticket+1 WHERE gid=:gid");

$sql->bindValue(':gid',$gid,PDO::PARAM_STR);

$sql->execute();


?>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<a href="http://msyoka.jp/gree/mypage.php">マイページへ</a>

</body>
</html>

