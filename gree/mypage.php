<!DOCTYPE html>

<html lang="ja" xml:lang="ja">
<link rel="shortcut icon" href="pic/icon.png">
<head>
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
</head>

<body>
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
    <CENTER>
       <!-- <?php require 'index3.php'; ?> -->
        <iframe src="topindex.php" height=300 width=300 frameborder="0">
 この部分は iframe 対応のブラウザで見てください。
</iframe>
    </CENTER>
  

    </div>

    <!--メインメニュ-->
    <CENTER><?php
    $PDO = new PDO('mysql:dbname=gree_test_game;host=msyoka.jp','root','445500');

$gid = $_SESSION["gid"];
$sql = $PDO->prepare("SELECT ticket,energy FROM game1 WHERE :gid");
$sql->bindValue(':gid',$gid,PDO::PARAM_STR);
$sql->execute();

while($data=$sql->fetch(PDO::FETCH_ASSOC))
{
	$sticket = $data["ticket"];
	$energy = $data["energy"];
}

    for($i=0; $i<$sticket; $i++)
    {
        echo "<img src=pic/mypage/icon_6m_96.png width=40>";
    }
    
    ?></CENTER>
    <table style="width:100%;">
        <tbody>
            <tr>
            <?php echo $energy ?>
            <?php

             $penergy = $energy - 20;

              if($penergy<0){
              	$minihref= "";
              	$menergy = "pic/mypage/minigame_off.png";
              }elseif ($penergy >=0) {
              	$minihref="index2.php";
              	$menergy = "pic/mypage/minigame.gif";
              }

            ?>
                <td style="border-collapse: collapse; border-spacing: 0;">
                    <div style="float:left; display:block; margin-left:-1px;">
                        <a href="<?php echo $minihref ?>" style="display:block;">
                            <img style="vertical-align:bottom" width="65" src="<?php echo $menergy ?>" alt="">
                        </a>
                    </div>
                </td>
                <?php
                if($sticket==0)
                {
                    $href = "";
                    $pstory = "pic/mypage/story_off.jpg";
                }elseif($sticket>0){
                    $href ="index.php";
                    $pstory = "pic/mypage/story.gif";
                }
                ?>


                <td style="padding-left:2px;">
                    <div style="float:left; display:block; margin-left:-2px;">
                        <a href="<?php echo $href ?>"><img style="vertical-align:bottom;" width="190" height="60" src="<?php echo $pstory ?>" alt="">
                        </a>
                    </div>

                </td>
                <td style="padding-left:4px;">
                    <div style="float:left; display:block; margin-left:-2px;">

                        <a href="gacha.php"><img style="vertical-align:bottom" width="65" src="pic/mypage/gacha.gif" alt="">
                        </a>

                </td>

                </div>
        </tbody>
        </tr>
    </table>

    <div class="br">
        <img width="320" src="pic/mypage/campaign.gif" alt=""> </div>
    <div class="cp_banner_date">
        11月4日 05:14まで </div>
    <div class="cp_banner_box">
        <div>
            <a href="wearhouse.php"><img style="width:95%;" src="pic/campaignbanner/can_banner.png" alt="">
            </a>
        </div>
    </div>


    </div>

</html>