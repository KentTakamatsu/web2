<?php
session_start();
//require 'index.php';
$gid = $_SESSION["gid"];
$PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');
$sql = $PDO->prepare("SELECT * FROM loveParam WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

$loveParam = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
  
  $loveParam[0] = $data["maiko"];
  $loveParam[1] = $data["akiko"];
  $loveParam[2] = $data["akane"];
  $loveParam[3] = $data["nene"];
  $loveParam[4] = $data["kyoka"];
}

$sql = $PDO->prepare("SELECT talk,nowticket FROM game1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

$story = array();
while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
  
  $story[] = $data["talk"];
  $story[] = $data["nowticket"];

}
?>

<!DOCTYPE html>
<html lang="ja" xml:lang="ja">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>マイデータ</title>
    <link rel="stylesheet" type="text/css" href="CSS/bace.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/main.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/mypage.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/remodal.css" media="all">
    <link rel="stylesheet" type="text/css" href="CSS/remodal-default-theme.css" media="all">
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/remodal.js"></script>
    <script type="text/javascript" src="http://aimg-pf.gree.net/js/app/gree.js"></script>
    <script>
        GREE.init({
            app_id: '28088',
            sandbox: true,

            iframe_width: '100%',
            iframe_height: window.innerHeight + 'px'
        });
    </script>
</head>
<table style="width:100%;">
    <tbody>
        <tr>
            <td style="border-collapse: collapse; border-spacing: 0;">
                <div style="float:left; display:block; margin-left:-1px;">
                    <a href="mypage.php" style="display:block;">
                        <img style="vertical-align:bottom" width="65" src="pic/header/mypage_header.gif" alt="">
                    </a>
                </div>
            </td>
            <td style="padding-left:2px;">
                <div style="float:left; display:block; margin-left:-2px;">
                    <img style="vertical-align:bottom;" width="190" src="pic/header/top_banner.png" alt="">
                </div>


                <td style="padding-left:4px;">
                    <div style="float:left; display:block; margin-left:-2px;">

                        <a href="#modal"><img style="vertical-align:bottom" width="65" src="pic/header/menu_header.gif" alt="">
                        </a>

                        <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
                            <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
                            <div>
                                <h2 id="modal1Title"></h2>
                                <p id="modal1Desc">
                                    <a href="touch.php?use_iframe=false"><img src="pic/menu_modal/TOP.gif" width="20%">
                                    </a>
                                    <a href="mydata.php"><img src="pic/menu_modal/mydata.gif" width="20%">
                                    </a>
                                    <a href="shop.php"><img src="pic/menu_modal/shop.gif" width="20%">
                                    </a>

                                </p>
                            </div>

                        </div>

                </td>
        </tr>
    </tbody>
</table>
</div>
<!--  <CENTER><img src="<?php echo $imgpath ?>">
    <br>
    <?php echo $test1->entry->nickname; ?></CENTER> -->
進行状況:
<?php echo $story[0], "話",$story[1]-1, "チケット"; ?>
<br> 麻衣子：
<?php echo $loveParam[0]; ?>
<br> 昭子：
<?php echo $loveParam[1]; ?>
<br> あかね：
<?php echo $loveParam[2]; ?>
<br> ねね：
<?php echo $loveParam[3]; ?>
<br> 杏香：
<?php echo $loveParam[4]; ?>
</body>

</html>
