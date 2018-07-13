<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */
?>
<?= $header; ?>
<div id="content">
<div id="text2print" style="position: absolute; left: 150px; top: 620px; cursor: pointer;"><i class="fa fa-print fa-border" style="font-size: 2em !important;"></i> Εκτύπωση συναλλαγής</div>

	<table style="min-width: 600px; margin: auto; border: 1px solid black;">
	
		<tr>
			<th colspan="2" style="font-size: 20px; padding: 15px; text-align: center;"><?= $text_receipt; ?></th>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_name_lastname; ?></td>
			<td style="padding: 5px;"><?= $name_lastname; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_order_id; ?></td>
			<td style="padding: 5px;"><?= $order_id; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_business_name; ?></td>
			<td style="padding: 5px;"><?= $business_name; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_business_web_address; ?></td>
			<td style="padding: 5px;"><?= $business_web_address; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_order_info; ?></td>
			<td style="padding: 5px;"><?= $order_info; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_transaction_amount; ?></td>
			<td style="padding: 5px;"><?= $transaction_amount; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_transaction_currency; ?></td>
			<td style="padding: 5px;"><?= $transaction_currency; ?></td>
		</tr>
		<tr>
			<td style="padding: 4px;"><?= $text_transaction_date; ?></td>
			<td style="padding: 5px;"><?= $transaction_date; ?></td>
		</tr>

	</table>
</div>
<script type="text/javascript">
$('#text2print').on('click', function() {
	w=window.open();
	w.document.write($('#content').html());
	w.print();
	w.close();
});
</script>
<?= $footer; ?>