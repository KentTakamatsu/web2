<?php
session_start();
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$gid = $_SESSION["gid"];
echo "OK";

$param = htmlspecialchars($_GET["paymentId"]);
//$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');
//$selectdb =mysql_select_db('gree_test_game',$link);

(string)$param;



$sql = $PDO->prepare("SELECT itemId FROM Paymentlog WHERE paymentId=:id");

$sql->bindValue(':id',$param,PDO::PARAM_STR);

$sql->execute();

while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
	$result = $data["itemId"];
}



$sql = $PDO->prepare("INSERT INTO userItem(gid,itemId) VALUES(:gid,:result)");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->bindValue(':result',$result,PDO::PARAM_STR);
$sql->execute();


$link = mysql_close($link);

?>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<a href="http://msyoka.jp/gree/mypage.php">マイページへ</a>

</body>
</html>