<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */

// Heading
$_['heading_title']									=	'GOP Alpha Bank Gr';

// Text
$_['text_edit']										=	'Edit GOP Alpha Bank Gr';
$_['text_payment']									=	'Payment';
$_['text_success']									=	'Success: You have modified GOP Alpha Bank Gr!';
$_['text_GOP_AlphaBankGr']							=	'<a onclick="window.open(\'https://www.alpha.gr\');"><img src="view/image/extension/payment/AlphaBank.png" alt="Alpha Bank Gr" title="Alpha Bank Gr" style="border: 1px solid #EEEEEE;" /></a>';

// Tab
$_['tab_configuration']								=	'Configuration';

// Entry
$_['entry_merchant_id']								=	'Merchant Code';
$_['entry_merchant_id_info']						=	'The Merchant Code is given to you by Alpha Bank after your eshop is approved.';
$_['entry_shared_secret']							=	'Shared Secret';
$_['entry_shared_secret_info']						=	'The Shared Secret is given to you by Alpha Bank after your eshop is approved.';
$_['entry_mode']									=	'Mode';
$_['entry_mode_info']								=	'';
$_['entry_mode_live']								=	'Live';
$_['entry_mode_test']								=	'Test';
$_['entry_merchant_hosted_payment']					=	'Merchant Hosted Payment';
$_['entry_merchant_hosted_payment_info']			=	'The payment is hosted by the eshop and not redirected to Alpha Bank';
$_['entry_merchant_hosted_payment_true']			=	'True';
$_['entry_merchant_hosted_payment_false']			=	'False';
$_['entry_transaction_type']						=	'Transaction Type';
$_['entry_transaction_type_info']					=	'';
$_['entry_transaction_type_sale']					=	'Sale';
$_['entry_transaction_type_authorize']				=	'Authorize';
$_['entry_installments_type']						=	'Installments Type';
$_['entry_installments_type_info']					=	'';
$_['entry_installments_type_none']					=	'None';
$_['entry_installments_type_normal']				=	'Normal';
$_['entry_installments_type_recurring']				=	'Recurring';
$_['entry_installments_normal_period']				=	'Installments';
$_['entry_installments_normal_period_info']			=	'Provide the number of installments and or interest for this payment.[installments:interest:minimum total:maximum total] ex.6:0:0:100 12:0.5:0:1000 24:1.5:500:1000';
$_['entry_installments_normal_offset']				=	'Grace period';
$_['entry_installments_normal_offset_info']			=	'';
$_['entry_installments_recurring_frequency']		=	'Recurring Frequency';
$_['entry_installments_recurring_frequency_info']	=	'';
$_['entry_installments_recurring_end_date']			=	'Recurring Payment Last Date';
$_['entry_installments_recurring_end_date_info']	=	'';
$_['entry_css_url']									=	'CSS URL';
$_['entry_css_url_info']							=	'';
$_['entry_total']									=	'Total';
$_['entry_total_info']								=	'The checkout total the order must reach before this payment method becomes active.';
$_['entry_geo_zone']								=	'Geo Zone';
$_['entry_status']									=	'Status';
$_['entry_order_status']							=	'Order Status';
$_['entry_sort_order']								=	'Sort Order';

// Error
$_['error_permission']								=	'Warning: You do not have permission to modify payment Alpha Bank Gr Checkout!';
$_['error_merchant_id']								=	'Merchant Code Required!';
$_['error_shared_secret']							=	'Shared Secret Required!';
$_['error_installments_normal_offset']				=	'Grace period must be an integer larger than zero';
$_['error_installments_recurring_frequency']		=	'Accepted values 1-28';
$_['error_installments_recurring_end_date']			=	'The date must be in the according format ex. 00-00-0000';
$_['error_sort_order']								=	'Sort Order must be a number!';

// Info
$_['credits']										=	'Credits';
$_['credits_info']									=	'<a onclick="window.open(\'http://www.gkasios.com\');"><img src="view/image/extension/payment/GKASIOS_Logo.png" alt="GKASIOS" title="GKASIOS"></a>';
$_['license']										=	'License';
$_['license_info']									=	'Provided by GKASIOS under GNU/GPL License.<br /><span class="help">All Rights Reserved.</span>';
$_['donate']										=	'Donate';
$_['donate_info']									=	'<img border="0" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" alt="Donate" title="Donate" onclick="submitPaypal()">';
?>