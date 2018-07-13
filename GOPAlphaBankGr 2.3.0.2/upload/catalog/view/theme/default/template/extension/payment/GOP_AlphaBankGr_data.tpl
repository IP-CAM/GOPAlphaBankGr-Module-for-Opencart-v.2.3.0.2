<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */
?>
<?= $header; ?>
<div class="container">
	<div style="display: table; margin: auto; margin-top: 10px;">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<h1 style="font-size: 50px"><?= $text_redirect_to; ?></h1>
			</div>
		</div>
	</div>
	<div style="display: table; margin: auto; margin-top: 10px;">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<img style="width: 300px; height: 100px;" align="middle" src="<?= $config_url . 'catalog/view/theme/default/image/Alpha_Bank_logo.svg'; ?>"/>
			</div>
		</div>
	</div>
	<div style="display: table; margin: auto; margin-top: 10px;">
		<div style="display: table-cell; vertical-align: middle;">
			<div>
				<h3 style="font-size: 20px"><?= $text_if_redirect_fail; ?> <a style="font-size: 20px" onclick="document.dataform.submit();"><?= $text_here; ?></a></h3>
			</div>
		</div>
	</div>
	<form method="post" action="<?= $bank_url; ?>" name="dataform">
		<?php
		if(isset($merchant_id))
		{
		?>
		<input type="hidden" name="mid" value="<?= $merchant_id; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($language))
		{
		?>
		<input type="hidden" name="lang" value="<?= $language; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($device_category))
		{
		?>
		<input type="hidden" name="deviceCategory" value="<?= $device_category; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($order_id))
		{
		?>
		<input type="hidden" name="orderid" value="<?= $order_id; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($order_description))
		{
		?>
		<input type="hidden" name="orderDesc" value="<?= $order_description; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($order_amount))
		{
		?>
		<input type="hidden" name="orderAmount" value="<?= $order_amount; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($currency))
		{
		?>
		<input type="hidden" name="currency" value="<?= $currency; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($payer_email))
		{
		?>
		<input type="hidden" name="payerEmail" value="<?= $payer_email; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($payer_phone))
		{
		?>
		<input type="hidden" name="payerPhone" value="<?= $payer_phone; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($bill_country))
		{
		?>
		<input type="hidden" name="billCountry" value="<?= $bill_country; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($bill_state))
		{
		?>
		<input type="hidden" name="billState" value="<?= $bill_state; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($bill_zip))
		{
		?>
		<input type="hidden" name="billZip" value="<?= $bill_zip; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($bill_city))
		{
		?>
		<input type="hidden" name="billCity" value="<?= $bill_city; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($bill_address))
		{
		?>
		<input type="hidden" name="billAddress" value="<?= $bill_address; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($weight))
		{
		?>
		<input type="hidden" name="weight" value="<?= $weight; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($dimensions))
		{
		?>
		<input type="hidden" name="dimensions" value="<?= $dimensions; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($ship_country))
		{
		?>
		<input type="hidden" name="shipCountry" value="<?= $ship_country; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($ship_state))
		{
		?>
		<input type="hidden" name="shipState" value="<?= $ship_state; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($ship_zip))
		{
		?>
		<input type="hidden" name="shipZip" value="<?= $ship_zip; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($ship_city))
		{
		?>
		<input type="hidden" name="shipCity" value="<?= $ship_city; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($ship_address))
		{
		?>
		<input type="hidden" name="shipAddress" value="<?= $ship_address; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($fraud_score))
		{
		?>
		<input type="hidden" name="addFraudScore" value="<?= $fraud_score; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($pay_method))
		{
		?>
		<input type="hidden" name="payMethod" value="<?= $pay_method; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($transaction_type))
		{
		?>
		<input type="hidden" name="trType" value="<?= $transaction_type; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($installments_normal_offset))
		{
		?>
		<input type="hidden" name="extInstallmentoffset" value="<?= $installments_normal_offset; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($installments_normal_period))
		{
		?>
		<input type="hidden" name="extInstallmentperiod" value="<?= $installments_normal_period; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($installments_recurring_frequency))
		{
		?>
		<input type="hidden" name="extRecurringfrequency" value="<?= $installments_recurring_frequency; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($installments_recurring_end_date))
		{
		?>
		<input type="hidden" name="extRecurringenddate" value="<?= $installments_recurring_end_date; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($block_score))
		{
		?>
		<input type="hidden" name="blockScore" value="<?= $block_score; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($css_url))
		{
		?>
		<input type="hidden" name="cssUrl" value="<?= $css_url; ?>" />
		<?php
		}
		?> 
		<?php
		if(isset($confirm_url))
		{
		?>
		<input type="hidden" name="confirmUrl" value="<?= $confirm_url; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($cancel_url))
		{
		?>
		<input type="hidden" name="cancelUrl" value="<?= $cancel_url; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($var_1))
		{
		?>
		<input type="hidden" name="var1" value="<?= $var_1; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($var_2))
		{
		?>
		<input type="hidden" name="var2" value="<?= $var_2; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($var_3))
		{
		?>
		<input type="hidden" name="var3" value="<?= $var_3; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($var_4))
		{
		?>
		<input type="hidden" name="var4" value="<?= $var_4; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($var_5))
		{
		?>
		<input type="hidden" name="var5" value="<?= $var_5; ?>" />
		<?php
		}
		?>
		<?php
		if(isset($digest))
		{
		?>
		<input type="hidden" name="digest" value="<?= $digest; ?>" />
		<?php
		}
		?>
	</form>
</div>

<script type="text/javascript"><!--
window.onLoad = document.dataform.submit();
//--></script>
<?= $footer; ?>