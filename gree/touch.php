
<?php

session_start();

require_once 'OAuth.php';
require_once 'HTTP/Request2.php';

ini_set('display_errors',1);
$app_conf = parse_ini_file('config.ini', true);



$oauth_conf = $app_conf['oauth'];

 

$user_request = OAuthRequest::from_request(null, null, null);
 
$oauth_token          = $user_request->get_parameter('oauth_token');
$oauth_token_secret   = $user_request->get_parameter('oauth_token_secret');
$oauth_signature      = $user_request->get_parameter('oauth_signature');
$opensocial_viewer_id = $user_request->get_parameter('opensocial_viewer_id');
$xoauth_requestor_id  = $opensocial_viewer_id;

$_SESSION["oauth_token"] = $oauth_token;
$_SESSION["oauth_token_secret"] = $oauth_token_secret;
$_SESSION["oauth_signature"] = $oauth_signature;
$_SESSION["opensocial_viewer_id"] = $opensocial_viewer_id;
$_SESSION["xoauth_requestor_id"] = $xoauth_requestor_id;



?>

<!DOCTYPE html>
<html lang="ja" xml:lang="ja">
    <head>
        <meta charset="utf-8">
        
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
        <title>?\?V???Q?e?X?g</title>
        <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="all">
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
    <body style="zoom: 1;">
    
    <div id="gree-app-container">

        <img src="pic/top1.jpg" width="100%">

 
        <a href="mypage.php"><img src="pic/tomypage.jpg" width="100%"></a>


 
        <img src="pic/info.jpg" width="100%">

<li>aaaaaaaaaaaaaaaaaaaaa</li>
      
        </div>
    </body>
</html>
