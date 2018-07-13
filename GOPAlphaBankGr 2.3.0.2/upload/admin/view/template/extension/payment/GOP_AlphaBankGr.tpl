<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */
?>
<?= $header; ?><?= $column_left; ?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="GOP_AlphaBankGr-form" class="btn btn-primary" data-toggle="tooltip" title="<?= $button_save; ?>"><i class="fa fa-save"></i></button>
				<a class="btn btn-default" data-toggle="tooltip" href="<?= $cancel; ?>" title="<?= $button_cancel; ?>"><i class="fa fa-reply"></i></a>
			</div>
			<h1><?= $heading_title; ?></h1>
			<ul class="breadcrumb">
			<?php
			foreach($breadcrumbs as $breadcrumb)
			{
			?>
				<li><a href="<?= $breadcrumb['href']; ?>"><?= $breadcrumb['text']; ?></a></li>
			<?php
			}
			?>
			</ul>
		</div>
	</div>
	<div class="container-fluid">
	<?php
	if($GOP_AlphaBankGr_warning_error)
	{
	?>
		<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?= $GOP_AlphaBankGr_warning_error; ?>
			<button type="button" class="close" data-dismiss="alert">&times;</button>
		</div>
	<?php
	}
	?>
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title"><i class="fa fa-pencil"></i> <?= $text_edit; ?></h3>
			</div>
			<div class="panel-body">
				<ul class="nav nav-tabs" id="GOP_AlphaBankGr-tabs">
					<li><a style="height: 40px;" data-toggle="tab" href="#tab-configuration"><i class="fa fa-2x fa-gears"></i></a></li>
					<li><a style="height:40px; margin:0px; padding:5px 5px 0px 5px;" data-toggle="tab" href="#tab-GKASIOS"><img style="width:32px;height:32px;" src="<?= $small_logo; ?>" alt="GKASIOS" title="GKASIOS"></a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane" id="tab-configuration">
						<div class="col-sm-10">
							<form method="post" enctype="multipart/form-data" action="<?= $action; ?>" class="form-horizontal" id="form-html-content">
								<div class="form-group required">
									<label for="GOP_AlphaBankGr_merchant_id" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_merchant_id_info; ?>"><?= $entry_merchant_id; ?></span></label>
									<div class="col-sm-10">
										<input type="text" name="GOP_AlphaBankGr_merchant_id" class="form-control" placeholder="<?= $entry_merchant_id; ?>" value="<?= $GOP_AlphaBankGr_merchant_id; ?>" />
										<?php
										if($GOP_AlphaBankGr_merchant_id_error)
										{
										?>
										<div class="text-danger"><?= $GOP_AlphaBankGr_merchant_id_error; ?></div>
										<?php
										}
										?>
									</div>
								</div>
								<div class="form-group required">
									<label for="GOP_AlphaBankGr_shared_secret" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_shared_secret_info; ?>"><?= $entry_shared_secret; ?></span></label>
									<div class="col-sm-10">
										<input type="text" name="GOP_AlphaBankGr_shared_secret" class="form-control" placeholder="<?= $entry_merchant_id; ?>" value="<?= $GOP_AlphaBankGr_shared_secret; ?>" />
										<?php
										if($GOP_AlphaBankGr_shared_secret_error)
										{
										?>
										<div class="text-danger"><?= $GOP_AlphaBankGr_shared_secret_error; ?></div>
										<?php
										}
										?>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_mode" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_mode_info; ?>"><?= $entry_mode; ?></span></label>
									<div class="col-sm-10">
										<input type="radio" name="GOP_AlphaBankGr_mode" class="radio-inline" value="0" <?php if($GOP_AlphaBankGr_mode == 0){ echo 'checked'; } ?>><?= $entry_mode_test; ?>
										<input type="radio" name="GOP_AlphaBankGr_mode" class="radio-inline" value="1" <?php if($GOP_AlphaBankGr_mode == 1){ echo 'checked'; } ?>><?= $entry_mode_live; ?>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_merchant_hosted_payment" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_merchant_hosted_payment_info; ?>"><?= $entry_merchant_hosted_payment; ?></span></label>
									<div class="col-sm-10">
										<input type="radio" name="GOP_AlphaBankGr_merchant_hosted_payment" class="radio-inline" value="0" <?php if($GOP_AlphaBankGr_merchant_hosted_payment == 0){ echo 'checked'; } ?>><?= $entry_merchant_hosted_payment_false; ?>
										<input type="radio" name="GOP_AlphaBankGr_merchant_hosted_payment" class="radio-inline" value="1" <?php if($GOP_AlphaBankGr_merchant_hosted_payment == 1){ echo 'checked'; } ?>><?= $entry_merchant_hosted_payment_true; ?>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_transaction_type" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_transaction_type_info; ?>"><?= $entry_transaction_type; ?></span></label>
									<div class="col-sm-10">
										<input type="radio" name="GOP_AlphaBankGr_transaction_type" class="radio-inline" value="0" <?php if($GOP_AlphaBankGr_transaction_type == 0){ echo 'checked'; } ?>><?= $entry_transaction_type_sale; ?>
										<input type="radio" name="GOP_AlphaBankGr_transaction_type" class="radio-inline" value="1" <?php if($GOP_AlphaBankGr_transaction_type == 1){ echo 'checked'; } ?>><?= $entry_transaction_type_authorize; ?>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_installments_type" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_installments_type_info; ?>"><?= $entry_installments_type; ?></span></label>
									<div class="col-sm-10">
										<input type="radio" name="GOP_AlphaBankGr_installments_type" class="radio-inline" value="0" onClick="showInstallmentsType();" <?php if($GOP_AlphaBankGr_installments_type == 0){ echo 'checked'; } ?>><?= $entry_installments_type_none; ?>
										<input type="radio" name="GOP_AlphaBankGr_installments_type" class="radio-inline" value="1" onClick="showInstallmentsType();" <?php if($GOP_AlphaBankGr_installments_type == 1){ echo 'checked'; } ?>><?= $entry_installments_type_normal; ?>
										<input type="radio" name="GOP_AlphaBankGr_installments_type" class="radio-inline" value="2" onClick="showInstallmentsType();" <?php if($GOP_AlphaBankGr_installments_type == 2){ echo 'checked'; } ?>><?= $entry_installments_type_recurring; ?>
									</div>
								</div>
								<div name="GOP_AlphaBankGr_installments_type_0" id="GOP_AlphaBankGr_installments_type_0" <?php if($GOP_AlphaBankGr_installments_type != 0){ echo 'style="display:none;"'; } ?>></div>
								<div name="GOP_AlphaBankGr_installments_type_1" id="GOP_AlphaBankGr_installments_type_1" <?php if($GOP_AlphaBankGr_installments_type != 1){ echo 'style="display:none;"'; } ?>>
									<div class="form-group">
										<label for="GOP_AlphaBankGr_installments_type" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_installments_normal_period_info; ?>"><?= $entry_installments_normal_period; ?></span></label>
										<div class="col-sm-10">
											<input type="text" name="GOP_AlphaBankGr_installments_normal_period" class="form-control" placeholder="<?= $entry_installments_normal_period; ?>" value="<?= $GOP_AlphaBankGr_installments_normal_period; ?>" />
										</div>
									</div>
									<div class="form-group">
										<label for="GOP_AlphaBankGr_installments_normal_offset" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_installments_normal_offset_info; ?>"><?= $entry_installments_normal_offset; ?></span></label>
										<div class="col-sm-10">
											<input type="text" name="GOP_AlphaBankGr_installments_normal_offset" class="form-control" placeholder="<?= $entry_installments_normal_offset; ?>" value="<?= $GOP_AlphaBankGr_installments_normal_offset; ?>" />
											<?php
											if($GOP_AlphaBankGr_installments_normal_offset_error)
											{
											?>
											<div class="text-danger"><?= $GOP_AlphaBankGr_installments_normal_offset_error; ?></div>
											<?php
											}
											?>
										</div>
									</div>
								</div>
								<div name="GOP_AlphaBankGr_installments_type_2" id="GOP_AlphaBankGr_installments_type_2" <?php if($GOP_AlphaBankGr_installments_type!=2){echo 'style="display:none;"';} ?>>
									<div class="form-group">
										<label for="GOP_AlphaBankGr_installments_recurring_frequency" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_installments_recurring_frequency_info; ?>"><?= $entry_installments_recurring_frequency; ?></span></label>
										<div class="col-sm-10">
											<input type="text" name="GOP_AlphaBankGr_installments_recurring_frequency" class="form-control" placeholder="<?= $entry_installments_recurring_frequency; ?>" value="<?= $GOP_AlphaBankGr_installments_recurring_frequency; ?>" />
											<?php
											if($GOP_AlphaBankGr_installments_recurring_frequency_error)
											{
											?>
											<div class="text-danger"><?= $GOP_AlphaBankGr_installments_recurring_frequency_error; ?></div>
											<?php
											}
											?>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-2 control-label" for="GOP_AlphaBankGr_installments_recurring_end_date"><span data-toggle="tooltip" title="<?= $entry_installments_recurring_end_date_info; ?>"><?= $entry_installments_recurring_end_date; ?></span></label>
										<div class="col-sm-10">
											<div class="input-group date">
												<input type="text" name="GOP_AlphaBankGr_installments_recurring_end_date" class="form-control" data-format="DD-MM-YYYY" placeholder="<?= $entry_installments_recurring_end_date; ?>" value="<?= $GOP_AlphaBankGr_installments_recurring_end_date; ?>" />
												<span class="input-group-btn">
													<button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
												</span>
											 </div>
											<?php
											if($GOP_AlphaBankGr_installments_recurring_end_date_error)
											{
											?>
											<div class="text-danger"><?= $GOP_AlphaBankGr_installments_recurring_end_date_error; ?></div>
											<?php
											}
											?>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_css_url" class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?= $entry_css_url_info; ?>"><?= $entry_css_url; ?></span></label>
									<div class="col-sm-10">
										<input type="text" name="GOP_AlphaBankGr_css_url" class="form-control" placeholder="<?= $entry_css_url; ?>" value="<?= $GOP_AlphaBankGr_css_url; ?>" />
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_total" class="col-sm-2 control-label"><?= $entry_total; ?></label>
									<div class="col-sm-10">
										<input type="text" name="GOP_AlphaBankGr_total" class="form-control" placeholder="<?= $entry_total; ?>" value="<?= $GOP_AlphaBankGr_total; ?>" />
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_order_status_id" class="col-sm-2 control-label"><?= $entry_order_status; ?></label>
									<div class="col-sm-10">
										<select name="GOP_AlphaBankGr_order_status_id" class="form-control">
										<?php
										foreach($order_statuses as $order_status)
										{
										?>
											<option value="<?= $order_status['order_status_id']; ?>" <?php if($GOP_AlphaBankGr_order_status_id == $order_status['order_status_id']){ echo 'selected'; }?>><?= $order_status['name']; ?></option>
										<?php
										}
										?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-2 control-label" for="GOP_AlphaBankGr_geo_zone_id"><?= $entry_geo_zone; ?></label>
									<div class="col-sm-10">
										<select name="GOP_AlphaBankGr_geo_zone_id" class="form-control">
										<?php
										foreach($geo_zones as $geo_zone)
										{
										?>
											<option value="<?= $geo_zone['geo_zone_id']; ?>" <?php if($GOP_AlphaBankGr_geo_zone_id == $geo_zone['geo_zone_id']){ echo 'selected'; } ?>><?= $geo_zone['name']; ?></option>
										<?php
										}
										?>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_status" class="col-sm-2 control-label"><?= $entry_status; ?></label>
									<div class="col-sm-10">
										<select name="GOP_AlphaBankGr_status" class="form-control">
											<option value="1" <?php if($GOP_AlphaBankGr_status == 1){ echo 'selected'; } ?>><?= $text_enabled; ?></option>
											<option value="0" <?php if($GOP_AlphaBankGr_status == 0){ echo 'selected'; } ?>><?= $text_disabled; ?></option>
										</select>
									</div>
								</div>
								<div class="form-group">
									<label for="GOP_AlphaBankGr_sort_order" class="col-sm-2 control-label"><?= $entry_sort_order; ?></label>
									<div class="col-sm-10">
										<input type="text" name="GOP_AlphaBankGr_sort_order" class="form-control" value="<?= $GOP_AlphaBankGr_sort_order; ?>" />
										<?php
										if($GOP_AlphaBankGr_sort_order_error)
										{
										?>
										<div class="text-danger"><?= $GOP_AlphaBankGr_sort_order_error; ?></div>
										<?php
										}
										?>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="tab-pane" id="tab-GKASIOS">
						<div class="form-horizontal" style="padding-left: 15px; padding-right: 15px">
							<div class="form-group">
								<label class="col-sm-2 control-label"><?= $credits; ?></label>
								<div class="col-sm-10"><?= $credits_info; ?></div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?= $license; ?></label>
								<div class="col-sm-10"><?= $license_info; ?></div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"><?= $donate; ?></label>
								<div class="col-sm-10"><?= $donate_info; ?></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript"><!--
function showInstallmentsType()
{
	var radio_group = document.getElementsByName("GOP_AlphaBankGr_installments_type");
	for(var i = 0; i < radio_group.length; i++)
	{
		var button = radio_group[i];
		method = document.getElementById("GOP_AlphaBankGr_installments_type_" + button.value);
		method.setAttribute('style', method.style.cssText);
		method.style.cssText = 'display:none;';

		if(button.checked)
		{
			method.style.cssText = 'display:block;';
		}
	}
}

function submitPaypal()
{
	var win = window.open();
	var paypalHTML = '<html><body><form method="post" action="https://www.paypal.com/cgi-bin/webscr" id="paypal" target="_top"><input type="hidden" name="cmd" value="_s-xclick"><input type="hidden" name="hosted_button_id" value="<?= $paypal_button_id; ?>"></form></body></html>';
	win.document.write(paypalHTML);
	win.document.getElementById("paypal").submit();
}

$('.date').datetimepicker({
	pickTime: false
});

$('.time').datetimepicker({
	pickDate: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('#GOP_AlphaBankGr-tabs li:first-child a').tab('show');
//--></script>
<?= $footer; ?>