<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="target-densitydpi=device-dpi, width=640px, maximum-scale=1.0, user-scalable=yes">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>test</title>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.min.css">
<link rel="shortcut icon" href="../august-soft.com/rss/logo.ico" type="image/vnd.microsoft.icon" />
<link rel="stylesheet" type="text/css" href="common/css/august.main.css">
<link rel="stylesheet" type="text/css" href="common/css/august.xs.css" media="only screen and (max-width: 791px)">
<link rel="stylesheet" type="text/css" href="common/css/august.sm.css" media="only screen and (min-width: 792px) and (max-width: 1060px)">
<link rel="stylesheet" type="text/css" href="common/css/august.tb.css" media="only screen and (min-width: 1061px) and (max-width: 1351px)">
<link rel="stylesheet" type="text/css" href="common/css/august.md.css" media="only screen and (min-width: 1352px) and (max-width: 1607px)">
<link rel="stylesheet" type="text/css" href="common/css/august.lg.css" media="only screen and (min-width: 1608px)">
<link rel="stylesheet" type="text/css" href="common/css/magnific-popup.css"> 
<!--[if lt IE 9]>
<script src="../html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="../code.jquery.com/jquery.min.js"></script>
<script src="common/js/jquery.magnific-popup.min.js"></script>
<script src="common/js/background-blur.js"></script>
<script src="common/js/august.common.js"></script>
<script src="common/js/august.news.js"></script>
<script>
$(function(){
	$('#initial-cover').css({'background-image':'url('+backgroundImagePath+')'});
	var agent = navigator.userAgent;
	var redirectPass = '/sample/sp/';
	if(agent.search(/iPhone/) != -1 || agent.search(/iPad/) != -1 || agent.search(/iPod/) != -1 || agent.search(/Android/) != -1 || agent.search(/Chrome/) != -1 || agent.search(/Firefox/) != -1){
		$('#bg-cover').css({backgroundImage:'url('+backgroundImagePath+')'});
	}else{
		$('#bg-cover').backgroundBlur({
			//背景画像
			imageURL : backgroundImagePath,
			blurAmount : 5
		});
	}
});
</script>
</head>

<body>
	<header>
		<div>
			<h1 class="header-logo"><a href="index.html">mypage</a></h1>
			<nav class="header-nav">
				<ul>
					<li><a href="information/index.html"><span>ご案内</span></a></li>
					<li><a href="hatou/index.html"><span>新作情報</span></a></li>
					<li><a href="product/index.html"><span>製品情報</span></a></li>
					<li><a href="event/index.html"><span>イベント情報</span></a></li>
					<li><a href="goods/index.html"><span>関連商品</span></a></li>
					<li><a href="inquiry/index.html"><span>お問い合わせ</span></a></li>
					<li><a href="userentry/index.html"><span>ユーザー登録</span></a></li>
					<li><a href="support/index.html"><span>サポート</span></a></li>
				</ul>
			</nav>
			<div class="header-sns"><a href="../august-soft.com/index.html"><img src="common/img/nav/nav-tw.png"></a><a href="https://www.facebook.com/sharer/sharer.php_u=august%2dsoft%2ecom" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="common/img/nav/nav-fb.png"></a><a href="../b.hatena.ne.jp/entry/august-soft.com/index.html"><img src="common/img/nav/nav-hb.png"></a></div>
			<nav class="header-dropdown">
				<label>
					<input type="checkbox">
					<ul>
						<li><a href="information/index.html"><span>ご案内</span></a></li>
						<li><a href="hatou/index.html"><span>新作情報</span></a></li>
						<li><a href="product/index.html"><span>製品情報</span></a></li>
						<li><a href="event/index.html"><span>イベント情報</span></a></li>
						<li><a href="goods/index.html"><span>関連商品</span></a></li>
						<li><a href="inquiry/index.html"><span>お問い合わせ</span></a></li>
						<li><a href="userentry/index.html"><span>ユーザー登録</span></a></li>
						<li><a href="support/index.html"><span>サポート</span></a></li>
						<li><a href="calendar.html"><span>カレンダー</span></a></li>
					</ul>
				</label>
			</nav>
		</div>
	</header>
	<!-- #main-container -->
	<div id="main-container">
		<section id="section-top">
			<a href="hatou/index.html" title="千の刃濤、桃花染の皇姫"><img src="common/img/mainbanner.png"></a>
		</section>
		<!-- #section-hot -->
		<section id="section-hot">
			<h1>HOT PRODUCTS</h1>
			<ul>
				<li><a href="../august-soft.com/userentry_senmomo/index.html" title="「千の刃濤、桃花染の皇姫」ユーザー登録・アンケートページへ"><img src="common/img/hot/24.png" alt="「千の刃濤、桃花染の皇姫」ユーザー登録・アンケートページへ"></a></li>
				<li><a href="../august-soft.com/hatou/index.html" title="「千の刃濤、桃花染の皇姫」好評発売中です"><img src="common/img/hot/25.png" alt="「千の刃濤、桃花染の皇姫」好評発売中です"></a></li>
				<li><a href="https://store.line.me/stickershop/author/53125/ja.html" title="LINEスタンプ販売中"><img src="common/img/hot/14.png" alt="LINEスタンプ販売中"></a></li>
        	</ul>
		</section>
		<!-- /#section-hot -->
		<!-- #section-news -->
		<section id="section-news">
			<h1>NEWS</h1>
			<!--　ニュースソースはDBより自動で反映 -->
			<div>
			</div>
			<h3><a href="oldnews.html">過去のニュースへ</a></h3>
		</section>
		<!-- /#section-news -->
		<!-- #section-products -->
		<section id="section-products">
			<h1>AAUGUST PRODUCTS</h1>
			<ul>
				<li><a href="../august-soft.com/hatou/index.html" title="千の刃濤、桃花染の皇姫"><img src="common/img/products/product-08.png" alt="千の刃濤、桃花染の皇姫"></a></li>
				<li><a href="daito_ds/index.html" title="大図書館の羊飼い -Dreaming Sheep-"><img src="common/img/products/product-07.png" alt="大図書館の羊飼い -Dreaming Sheep-"></a></li>
				<li><a href="daito_sd/index.html" title="大図書館の羊飼い~放課後しっぽデイズ~"><img src="common/img/products/product-06.png" alt="大図書館の羊飼い~放課後しっぽデイズ~"></a></li>
				<li><a href="daito/index.html" title="大図書館の羊飼い"><img src="common/img/products/product-05.png" alt="大図書館の羊飼い"></a></li>
				<li><a href="eustia/index.html" title="穢翼のユースティア"><img src="common/img/products/product-04.png" alt="穢翼のユースティア"></a></li>
				<li><a href="yak_mc/index.html" title="夜明け前より瑠璃色な-Moonlight Cradle-"><img src="common/img/products/product-03.png" alt="夜明け前より瑠璃色な-Moonlight Cradle-"></a></li>
				<li><a href="fa/index.html" title="FORTUNE ARTERIAL"><img src="common/img/products/product-02.png" alt="FORTUNE ARTERIAL"></a></li>
				<li><a href="yoake/index.htm" title="夜明け前より瑠璃色な"><img src="common/img/products/product-01.png" alt="夜明け前より瑠璃色な"></a></li>
			</ul>
		</section>
		<!-- /#section-products -->
		<!-- #section-topics -->
		<section id="section-topics">
			<h1>TOPICS</h1>
			<div>
				<div class="topics-twitter"><a class="twitter-timeline" href="https://twitter.com/august_soft.html" data-widget-id="619704109533298688">@august_softさんのツイート</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script></div>
				<ul>
					<li><a href="mail_info/index.html"><img src="common/img/topics/topic-pict-mail.png"></a></li>
					<li><a href="recruit/index.html"><img src="common/img/topics/topic-pict-recruit.png"></a></li>
					<li><a href="recruit_outside/index.html"><img src="common/img/topics/topic-pict-staff.png"></a></li>
					<li><a href="../www.dmm.co.jp/dc/pcgame/feature/august/index.html"><img src="common/img/topics/topic-pict-dlstore.png"></a></li>
					<li><a href="../www.side-connection.com/august_haishin/index.html"><img src="common/img/topics/topic-pict-music.png"></a></li>
					<li><a href="https://store.line.me/stickershop/author/53125/ja.html"><img src="common/img/topics/topic-pict-line.png"></a></li>
					<li><a href="../aria-soft.com/index.html"><img src="common/img/topics/topic-pict-aria.png"></a></li>
					<li><a href="comic/index.html"><img src="common/img/topics/topic-pict-comic.png"></a></li>
					<li><a href="calendar.html"><img src="common/img/topics/topic-pict-cal.png"></a></li>
				</ul>
			</div>
		</section>
		<!-- /#section-topics -->
	</div>
	<!-- /#main-container -->
	<footer>
		<a href="../august-soft.com/index.html"><img src="common/img/footer/footer-logo.png"></a>
		<nav>
			<ul>
				<li><a href="information/index.html">ご案内</a></li>
				<li><a href="hatou/index.html">新作情報</a></li>
				<li><a href="product/index.html">製品情報</a></li>
				<li><a href="event/index.html">イベント情報</a></li>
				<li><a href="goods/index.html">関連商品</a></li>
				<li><a href="inquiry/index.html">お問い合わせ</a></li>
				<li><a href="userentry/index.html">ユーザー登録</a></li>
				<li><a href="support/index.html">サポート</a></li>
				<li><a href="happy_uranai/index.html">はにはにラジオ ～ハッピー診断～</a></li>
			</ul>
		</nav>
		<small>Copyright c AUGUST 2001-2015 All rights reserved.</small>
	</footer>
	<!-- 右側サイドメニュー -->
	<div id="side-menu">
		<a href="../august-soft.com/index.html" title="トップへ"><span>トップへ</span></a>
		<a href="#section-hot" title="HOT PRODUCTS"><span>HOT PRODUCTS</span></a>
		<a href="#section-news" title="NEWS"><span>ニュース</span></a>
		<a href="#section-products" title="AUGUST PRODUCTS"><span>AUGUST PRODUCTS</span></a>
		<a href="#section-topics" title="TOPICS"><span>TOPICS</span></a>
		<a href="calendar.html" title="CALENDAR"><span>カレンダー</span></a>
	</div>
	<div id="initial-cover">
		<!-- 最初の注意文 -->
		<p>
		このページには18歳未満の方には有害なコンテンツも含まれています。<br>
		該当される方や美少女ゲームに興味のない方の閲覧はご遠慮下さい。
		</p>
		<!-- 最終更新日 -->
		<div>最終更新日<span></span></div>
	</div>
	<!-- 背景 -->
	<div id="bg-cover"></div>
	<!-- スクロール案内 -->
	<div id="action-guide">
		<div></div>
		<div></div>
	</div>
	<!-- /スクロール案内 -->
	<img src="counter/wwwcount.cgi_gif" class="counter" alt="Counter" />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-63987612-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>
<!-- Rejewski SMWUMYPEQJL -->
