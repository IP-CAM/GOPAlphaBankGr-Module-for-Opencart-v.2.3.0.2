<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */
?>
<form method="post" action="<?= $action; ?>">
	<table>
		<tr>
			<td><?= $text_tax_card_number; ?></td>
			<td><input type="text" name="tax_card_number" /></td>
		</tr>
	</table>
	<br />
	<?php
	if($installments != null)
	{
	?>
	<div class="checkout-product" id="payment">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<td id='text_installments_number'><?= $text_installments_number; ?></td>
					<td id='text_installment_amount'><?= $text_installment_amount; ?></td>
					<td id='text_installment_total'><?= $text_installment_total; ?></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td id='installments'>
					<?php
					foreach($installments as $key => $installment)
					{
					?>
						</br>
						<input type="radio" name="installment" value="<?= $key; ?>"><?= $installment[0] . '(' . $installment[1] . '%)'; ?></input>
					<?php
					}
					?>
					</td>
					<td id='installment_amount'></td>
					<td id='installment_total'></td>
				</tr>
			</tbody>
		</table>
	</div>
	<?php
	}
	?>

	<?php
	//To be implemented
	if($merchant_hosted_payment)
	{
	?>
	<div class="checkout-product" id="payment">
		<table>
			<tr>
				<td colspan="2">
					<input type="radio" name="credit_card" value="0" checked><img src="<?= $visa_image; ?>"></input>
					<input type="radio" name="credit_card" value="1"><img src="<?= $master_image; ?>"></input>
					<input type="radio" name="credit_card" value="2"><img src="<?= $visa_electron_image; ?>"></input>
					<input type="radio" name="credit_card" value="3"><img src="<?= $maestro_image; ?>"></input>
					<input type="radio" name="credit_card" value="4"><img src="<?= $ae_image; ?>"></input>
				</td>
			</tr>
			<tr>
				<td><?= $text_credit_card_number; ?></td>
				<td><input type="text" name="credit_card_number" /></td>
			</tr>
			<tr>
				<td><?= $text_credit_card_expiration_date; ?></td>
				<td>
					<select name="credit_card_expiration_date_month">
					<?php
					for($i = 1; $i < 13; $i++)
					{
					?>
						<option value="<?= $i; ?>"><?= $i; ?></option>
					<?php
					}
					?>
					</select>
					<select name="credit_card_expiration_date_year">
					<?php
					for($i = date("Y"); $i < date("Y") + 10; $i++)
					{
					?>
						<option value="<?= $i; ?>"><?= $i; ?></option>
					<?php
					}
					?>
					</select>
				</td>
			</tr>
			<tr>
				<td><?= $text_credit_card_holder_name; ?></td>
				<td><input type="text" name="credit_card_holder_name" /></td>
			</tr>
			<tr>
				<td><?= $text_credit_card_verification_code; ?></td>
				<td><input type="text" name="credit_card_verification_code" size="4" maxlength="4" /></td>
			</tr>
		</table>
	</div>
	<?php
	}
	?>
	<div class="buttons">
		<div class="pull-right">
			<input type="submit" class="btn btn-primary" id="button-confirm" value="<?= $button_confirm; ?>" />
		</div>
	</div>
</form>

<script type="text/javascript"><!--
<?php
if($installments != null)
{
?>
(document.getElementsByName("installment"))[0].checked = true;
var rad = document.getElementsByName('installment');
var prev = null;
for(var i = 0; i < rad.length; i++)
{
	if(rad[i].checked)
	{
		calcInstallment(rad[i]);
	}

	rad[i].onclick = function()
	{
		calcInstallment(this);
	}
}

function calcInstallment(radio)
{
	var total = <?= $total; ?>;

	var installments = new Array();
	<?php
	foreach($installments as $key => $installment)
	{
		echo 'installments[' . $key . '] = new Array(2);';
		echo 'installments[' . $key . '][0] = ' . $installments[$key][0] . ';';
		echo 'installments[' . $key . '][1] = ' . $installments[$key][1] . ';';
	}
	?>
	var installment = total;
	var new_total = total;
	var interest = 0;
	if(installments[radio.value][0] != 0 && installments[radio.value][0] != 1)
	{
		interest = 0;
		if(installments[radio.value][1] != 0)
		{
			interest = total * (installments[radio.value][1] / 100);
		}
		new_total = total + interest;
		installment = new_total / installments[radio.value][0];
	}
	document.getElementById('installment_amount').innerHTML = installment.toFixed(2);
	document.getElementById('installment_total').innerHTML = new_total.toFixed(2);
}
<?php
}
?>

<?php
if($merchant_hosted_payment)
{
?>
$('#button-confirm').on('click',	function()
									{
										$.ajax(	{
													type: 'get',
													url: 'index.php?route=extension/payment/GOP_AlphaBankGr/send',
													cache: false,
													beforeSend: function()
													{
														$('#button-confirm').button('loading');
													},
													complete: function()
													{
														$('#button-confirm').button('reset');
													},
													success: function()
													{
														location = '<?= $continue; ?>';
													}
												});
									});
<?php
}
?>
//--></script>