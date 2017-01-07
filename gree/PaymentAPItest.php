<?php

$ticket = array(
	
	"callbackUrl" =>"http://msyoka.jp/callback",
	"finishPageUrl"=>"http://msyoka.jp/finishPage",
	"message"=>"ストーリーチケット",
	"paymentItems"=> array(
						"itemID"=>"00001",
						"itemName"=>"ストーリーチケット",
						"unitPrice"=>"100",
						"quantiry"=>"1",
						"imageUrl"=>"http://msyoka.jp/gree/pic/shop_item/ticket.gif",
						"description"=>"ストーリーチケットです"
						)
				);
				
				
echo json_encode($ticket);

?>