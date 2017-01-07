<?php
require('util.php');

define('CONSUMER_KEY', '011ef0ba3bfe');
define('CONSUMER_SECRET', '4d6e3345a4b3f2db9442ce5f32115c35');

// URL
define('RTOKEN_URL', 'http://os-sb.gree.net/api/rest');
define('AUTH_URL', 'http://os-sb.gree.net/api/rest');


//--------------------------------------
// アクセストークンの取得
//--------------------------------------
$params = array(
	"oauth_consumer_key" => CONSUMER_KEY,
	"oauth_nonce" => md5(microtime() . mt_rand()),
	"oauth_timestamp" => time(),
	"oauth_verifier" => $_GET['oauth_verifier'],
	"oauth_version" => "1.0",
	"oauth_signature_method" => "HMAC-SHA1",
	"oauth_token" => $_GET['oauth_token'],
);

// 署名作成
$params['oauth_signature'] = build_signature('POST', TOKEN_URL, $params, CONSUMER_SECRET);

// POST送信
$options = array('http' => array(
	'method' => 'POST',
	'content' => http_build_query($params)
));
$res = file_get_contents(TOKEN_URL, false, stream_context_create($options));

// レスポンス取得
parse_str($res, $token);
$access_token = $token['oauth_token'];
$access_token_secret = $token['oauth_token_secret'];


//--------------------------------------
// ユーザーの設定情報を取得してみる
//--------------------------------------
$params = array(
	"oauth_consumer_key" => CONSUMER_KEY,
	"oauth_nonce" => md5(microtime() . mt_rand()),
	"oauth_timestamp" => time(),
	"oauth_verifier" => $_GET['oauth_verifier'],
	"oauth_version" => "1.0",
	"oauth_signature_method" => "HMAC-SHA1",
	"oauth_token" => $access_token,
);

// GET送信
$params['oauth_signature'] = build_signature('GET', INFO_URL, $params, CONSUMER_SECRET, $access_token_secret);
$res = file_get_contents(INFO_URL . '?' . http_build_query($params));

// 表示
echo "<pre>" . print_r(json_decode($res, true), true) . "</pre>";

?>