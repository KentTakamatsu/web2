<?php

$ticket = array(
	
	"callbackUrl" =>"http://msyoka.jp/callback",
	"finishPageUrl"=>"http://msyoka.jp/finishPage",
	"message"=>"�X�g�[���[�`�P�b�g",
	"paymentItems"=> array(
						"itemID"=>"00001",
						"itemName"=>"�X�g�[���[�`�P�b�g",
						"unitPrice"=>"100",
						"quantiry"=>"1",
						"imageUrl"=>"http://msyoka.jp/gree/pic/shop_item/ticket.gif",
						"description"=>"�X�g�[���[�`�P�b�g�ł�"
						)
				);
				
				
echo json_encode($ticket);

?>