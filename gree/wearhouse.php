<?php
session_start();
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$gid = $_SESSION["gid"];

$sql = $PDO->query("SELECT * FROM Paymentlog INNER JOIN paymentItems ON Paymentlog.itemId = paymentItems.itemId");


$itemId = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
	$itemName = $data["itemName"];
	$quantity = $data["quantity"];
	$gid = $data["gid"];




}

$sql = $PDO->query("SELECT Paymentlog.gid,paymentItems.itemName,Sum(Paymentlog.quantity) FROM Paymentlog INNER JOIN paymentItems ON Paymentlog.itemId = paymentItems.itemId GROUP BY Paymentlog.gid,Paymentlog.itemId");
//$sql->execute();

$squantity  = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
	$sitemName = $data["itemName"];
	$squantity[] = $data["Sum(Paymentlog.quantity)"];
	//var_dump($data);
}

$_SESSION["squantity"] = $squantity[0];


$sql = $PDO->query("SELECT DISTINCT Paymentlog.itemId,paymentItems.imageUrl,COUNT(DISTINCT Paymentlog.itemId) FROM Paymentlog INNER JOIN paymentItems ON Paymentlog.itemId = paymentItems.itemId GROUP BY Paymentlog.gid,Paymentlog.itemId ORDER BY Paymentlog.itemId");


$img = array();
$itemId = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
	$count += $data["COUNT(DISTINCT Paymentlog.itemId)"];
	$img[] = $data["imageUrl"];
	$itemId[] = $data["itemId"];
	
}


?>


<html>
<header>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>マイページ</title>
    <link rel="stylesheet" type="text/css" href="CSS/bace.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/main.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/mypage.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/remodal.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/remodal-default-theme.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/modal.css" media="all">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/remodal.js"></script>
    <script type="text/javascript" src="http://aimg-pf.gree.net/js/app/gree.js"></script>
    <script type="text/javascript" src="tyrano/plugins/kag/kag.js"></script>
    <script>
        GREE.init({
            app_id: '28088',
            sandbox: true,

            iframe_width: '100%',
            iframe_height: window.innerHeight + 'px'
        });
    </script>
</header>
<!--<img src="<?php echo $img ?>" width="120pix"> -->

<?php 

for($i=0; $i<$count; $i++){
	echo "<img src=",$img[$i]," width=120pix>";
	echo $squantity[$i],"個";
	echo "<form action=useItem/",$itemId[$i],".php name=form",$i ,"method=post class=form_area>";
	echo " <input type=submit value=使う class=system_button3 style=width:55px; margin:0px; padding: 5px; display:inline;>";
                                                        
   echo "</form>";


}
?>

</html>