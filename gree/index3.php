<?php


require_once 'OAuth.php';
require_once 'HTTP/Request2.php';

$app_conf = parse_ini_file('config.ini', true);

ini_set('display_errors',1);

$oauth_conf = $app_conf['oauth'];

session_start();

$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');

// APIエンドポイント
$endpoint_url = $oauth_conf['api.endpoint_url'] . '/people/@me/@self';
$http_method = 'GET';
 
// URLクエリ
$request_data = array();
$request_data['xoauth_requestor_id'] = $_SESSION["xoauth_requestor_id"];
 
// 署名リクエスト
$signature_method = new OAuthSignatureMethod_HMAC_SHA1();
$oauth_consumer = new OAuthConsumer($oauth_conf['consumer_key'], $oauth_conf['consumer_secret']);
$access_token   = new OAuthToken($_SESSION["oauth_token"], $_SESSION["oauth_token_secret"]);
$oauth_request = OAuthRequest::from_consumer_and_token(
    $oauth_consumer, 
    $access_token, 
    $http_method, 
    $endpoint_url, 
    $request_data
);
$oauth_request->sign_request($signature_method, $oauth_consumer, $access_token);
 
// ヘッダーを取得する
$authorization_header_string = $oauth_request->to_header();
$authorization_header = substr($authorization_header_string, strlen('Authorization:'));
 
// APIリクエストを生成する
$http_options = array('timeout' => '10');
$http_request = new HTTP_Request2($endpoint_url, HTTP_Request2::METHOD_GET, $http_options);
$http_request->setHeader('Content-Type', "application/json");
$http_request->setHeader('Authorization', $authorization_header);

$url = $http_request->getUrl();
$url->setQueryVariable('xoauth_requestor_id', $_SESSION["xoauth_requestor_id"]);
 
// APIリクエストを送信する
$request_response = $http_request->send();

//echo $request_response->getBody();

$test1 = json_decode($request_response->getBody());

//var_dump($test1);

$gname= $test1->entry->nickname;
$gid = $test1->entry->id;

$_SESSION["gid"] = $gid;

$imgpath = $test1->entry->thumbnailUrlHuge;

$selectdb =mysql_select_db('gree_test_game',$link);

$insdb = mysql_query("INSERT INTO game1(gid,name) VALUES('$gid','$gname')",$link);

$link = mysql_close($link);
?>


<html lang="ja" xml:lang="ja">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <title>test</title>
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

<CENTER><img src="<?php echo $imgpath ?>"><br>
<?php echo $test1->entry->nickname; ?></CENTER>


</body>

</html>