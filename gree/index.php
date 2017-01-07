<?php
session_start();
$gid = $_SESSION["gid"];
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$sql = $PDO->prepare("SELECT talk,nowticket FROM game1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

$story = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
  
  $story[] = $data["talk"];
  $story[] = $data["nowticket"];

}
var_dump($story);
?>

<!DOCTYPE html>
<html>
<head>
  <title>testtestt</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<meta name="viewport" content=" user-scalable=no" />  

<link href="./tyrano/tyrano.css" rel="stylesheet" type="text/css"/>
<link href="./tyrano/libs/jquery-ui.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="./tyrano/libs/jquery-2.0.3.min.js"></script>
<script type="text/javascript" src="./tyrano/libs/jquery-ui.min.js"></script>
<script type="text/javascript" src="./tyrano/libs/jquery.a3d.js"></script>
<script type="text/javascript" src="./tyrano/libs/jsrender.min.js"></script>

<link href="./tyrano/libs/alertify/alertify.core.css" rel="stylesheet" type="text/css"/>
<link href="./tyrano/libs/alertify/alertify.default.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="./tyrano/libs/alertify/alertify.min.js"></script>


<script type="text/javascript" src="./tyrano/libs/html2canvas.js"></script>

<script type="text/javascript" src="./tyrano/lang.js" ></script>
<script type="text/javascript" src="./tyrano/libs.js" ></script>
<script type="text/javascript" src="./tyrano/tyrano.js" ></script>
<script type="text/javascript" src="./tyrano/tyrano.base.js" ></script>

<link href="./tyrano/libs/textillate/assets/animate.css" rel="stylesheet">
<script type="text/javascript" src="./tyrano/libs/textillate/assets/jquery.lettering.js"></script>
<script type="text/javascript" src="./tyrano/libs/textillate/jquery.textillate.js"></script>

<script type="text/javascript" src="./tyrano/libs/lz-string.min.js"></script>

<script type="text/javascript">
function doScroll() { if (window.pageYOffset === 0) { window.scrollTo(0,1); } }  
window.onload = function() { setTimeout(doScroll, 100); }  
</script>  

</head>

<body onselectstart="return false" onContextmenu="return false" ontouchmove="event.preventDefault()" >

<div id="tyrano_base" class="tyrano_base" style="overflow:hidden" unselectable="on" ondragstart="return false" >
</div>


<!--  First シナリオファイルに外部ファイルを利用したい場合は、こちらにシナリオファイルのURLを指定できます-->

<!-- <input type="hidden" id="first_scenario_file" value="http://msyoka.jp/gree/data/scenario/scene<?php echo $story[0] . $story[1] ?>.ks"> -->
<input type="hidden" id="first_scenario_file" value="http://msyoka.jp/gree/data/scenario/scene1.ks">

</body>
</html>

