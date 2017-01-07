<?php
function oauth_start($meth,$apiURL){


require_once 'OAuth.php';
require_once 'HTTP/Request2.php';

$app_conf = parse_ini_file('config.ini', true);

ini_set('display_errors',1);

$oauth_conf = $app_conf['oauth'];

session_start();

$link = mysql_connect('tk2-257-38416.vs.sakura.ne.jp','root','445500');


// APIエンドポイント
$endpoint_url = $oauth_conf['api.endpoint_url'] . '$apiURL';

if($meth=='GET')
{
$http_method = 'GET';
}
else if($meth=='POST')
{
$http_method ='POST';
}

 
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
if($meth=='GET')
{
$http_request = new HTTP_Request2($endpoint_url, HTTP_Request2::METHOD_GET, $http_options);
}
else if($meth=='POST')
{
$http_request = new HTTP_Request2($endpoint_url, HTTP_Request2::METHOD_POST, $http_options);
}

$http_request->setHeader('Content-Type', "application/json");
$http_request->setHeader('Authorization', $authorization_header);

$url = $http_request->getUrl();
$url->setQueryVariable('xoauth_requestor_id', $_SESSION["xoauth_requestor_id"]);
 
// APIリクエストを送信する
$request_response = $http_request->send();

//echo $request_response->getBody();

}

?>

