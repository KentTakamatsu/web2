
<?php
session_start();
ini_set('display_errors',1);
$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');

$ticket = file_get_contents('http://msyoka.jp/gree/Payments/energyMax.json');

require_once '../OAuth.php';
require_once '../HTTP/Request2.php';

$app_conf = parse_ini_file('../config.ini', true);

$oauth_conf = $app_conf['oauth'];

// APIエンドポイント
$endpoint_url = $oauth_conf['api.endpoint_url'] . '/payment/@me/@self/@app';
$http_method = 'POST';
 
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
$http_request = new HTTP_Request2($endpoint_url, HTTP_Request2::METHOD_POST, $http_options);
$http_request->setHeader('Content-Type', "application/json");
$http_request->setHeader('Authorization', $authorization_header);
$http_request->setBody($ticket);

$url = $http_request->getUrl();
$url->setQueryVariable('xoauth_requestor_id', $_SESSION["xoauth_requestor_id"]);
 
// APIリクエストを送信する
$request_response = $http_request->send();

$request_response->getBody();

$getticket=$request_response->getBody();

$dticket =json_decode($getticket,true);

//print "<pre>";
//print_r($dticket);
//print "</pre>";
//echo $dticket['entry'][0]['transactionUrl'];
$ticketPay= $dticket['entry'][0]['transactionUrl'];
$paymentId = $dticket['entry'][0]['paymentId'];
$status = $dticket['entry'][0]['status'];
$orderedTime = $dticket['entry'][0]['orderedTime'];
$gid = $_SESSION["gid"];
$itemid ="0007";
$quantity = 1;

$selectdb =mysql_select_db('gree_test_game',$link);

$insdb = mysql_query("INSERT INTO Paymentlog(gid,paymentId,itemId,status,oderTime,quantity) VALUES('$gid','$paymentId','$itemid','$status','$orderedTime','$quantity')",$link);

$link = mysql_close($link);

?>

<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>test</title>
    <link rel="stylesheet" type="text/css" href="../CSS/bace.css" media="all">
    <link rel="stylesheet" type="text/css" href="../CSS/main.css" media="all">
    <link rel="stylesheet" type="text/css" href="../CSS/mypage.css" media="all">
    <link rel="stylesheet" type="text/css" href="../CSS/remodal.css" media="all">
    <link rel="stylesheet" type="text/css" href="../CSS/remodal-default-theme.css" media="all">
    <link rel="stylesheet" type="text/css" href="../CSS/modal.css" media="all">
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="../js/remodal.js"></script>
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

<body>
    <div class="round_box1" style="margin-top:10px;">
        <div class="inner_box">
            <div class="title">
                体力全回復</div>
            <table>
                <tbody>
                    <tr>
                        <td style="width:85px; padding:6px;">
                            <img class="tmb" width="85" src="http://msyoka.jp/gree/pic/shop_item/medicine-bottle003.png" alt=""> </td>
                        <td class="text_left" style="vertical-align:top">
                            <div class="text_left mt10 mr5 mb5">
                                体力を全回復するアイテム
                                <div class="tmb_box_status">
                                    <span class="tmb_box_status_key">
											購入数
										</span> 1 </div>
                                <div class="tmb_box_status">
                                    <span class="tmb_box_status_key">
										消費コイン	</span> 150 </div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <a href="<?php echo $ticketPay; ?>">購入</a>
   <!-- 
   <form action="<?php echo $ticketPay; ?>" name="form1" method="post" class="form_area">
    <input type="submit" value="購入" class="system_button3" style="width:55px; margin:0px; padding: 5px; display:inline;">
     </form> -->


</body>

</html>