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
$_['text_edit']										=	'Επεξεργασία GOP Alpha Bank Gr';
$_['text_payment']									=	'Πληρωμή';
$_['text_success']									=	'Επιτυχία: Κάνατε αλλαγές στις ρυθμίσεις του GOP Alpha Bank Gr!';
$_['text_GOP_AlphaBankGr']							=	'<a onclick="window.open(\'https://www.alpha.gr\');"><img src="view/image/extension/payment/AlphaBank.png" alt="Alpha Bank Gr" title="Alpha Bank Gr" style="border: 1px solid #EEEEEE;" /></a>';

// Tab
$_['tab_configuration']								=	'Ρυθμίσεις';

// Entry
$_['entry_merchant_id']								=	'Κωδικός Εμπόρου (mid)';
$_['entry_merchant_id_info']						=	'Ο Κωδικός Εμπόρου σας δίνεται από την Alpha Bank μετά την έγκριση του καταστήματος σας.';
$_['entry_shared_secret']							=	'Κοινό Μυστικό (shared secret key)';
$_['entry_shared_secret_info']						=	'Το Κοινό Μυστικό σας δίνεται από την Alpha Bank μετά την έγκριση του καταστήματος σας.';
$_['entry_mode']									=	'Κατάσταση';
$_['entry_mode_info']								=	'Δοκιμή = Demo λειτουργία </br> Ζωντανά = Περιβάλλον παραγωγής';
$_['entry_mode_live']								=	'Ζωντανά';
$_['entry_mode_test']								=	'Δοκιμή';
$_['entry_merchant_hosted_payment']					=	'Φιλοξενούμενη πλήρωμη';
$_['entry_merchant_hosted_payment_info']			=	'Η πληρωμή φιλοξενείται από το eshop και ΔΕΝ μεταφέρεστε (redirect) στην Alpha Bank';
$_['entry_merchant_hosted_payment_true']			=	'Αλήθες';
$_['entry_merchant_hosted_payment_false']			=	'Ψευδές';
$_['entry_transaction_type']						=	'Τύπος Συναλλαγής';
$_['entry_transaction_type_info']					=	'';
$_['entry_transaction_type_sale']					=	'Πώληση';
$_['entry_transaction_type_authorize']				=	'Άδεια';
$_['entry_installments_type']						=	'Τύπος Δόσεων';
$_['entry_installments_type_info']					=	'';
$_['entry_installments_type_none']					=	'Κανένας';
$_['entry_installments_type_normal']				=	'Κανονικός';
$_['entry_installments_type_recurring']				=	'Επαναλαμβανόμενος';
$_['entry_installments_normal_period']				=	'Δόσεις';
$_['entry_installments_normal_period_info']			=	'Δηλώστε τον αριθμό των δόσεων και των επιτοκίων γιά αυτή την πληρωμή. [δόσεις:επιτόκιο:ελάχιστο σύνολο:μέγιστο σύνολο] </br> π.χ. 6:0:0:100 (6 δόσεις, 0%) ή </br> 12:0.5:0:1000 (12 δόσεις, 0.5%) ή </br> 24:1.5:500:1000 (24 δόσεις, 1.5%)';
$_['entry_installments_normal_offset']				=	'Περίοδος χάριτος';
$_['entry_installments_normal_offset_info']			=	'';
$_['entry_installments_recurring_frequency']		=	'Συχνότητα επανάληψης';
$_['entry_installments_recurring_frequency_info']	=	'';
$_['entry_installments_recurring_end_date']			=	'Ημερομηνία λήξης επαναλαμβανόμενης πληρωμής';
$_['entry_installments_recurring_end_date_info']	=	'';
$_['entry_css_url']									=	'CSS URL';
$_['entry_css_url_info']							=	'Αφήστε το κενό, το βλέπει αυτόματα από τους κωδικούς';
$_['entry_total']									=	'Σύνολο';
$_['entry_total_info']								=	'Το συνολικό ποσό που πρέπει να φθάσει μια παραγγελία πρίν γίνει ενεργή η πληρωμή.';
$_['entry_geo_zone']								=	'Γεωγραφική Ζώνη:';
$_['entry_status']									=	'Κατάσταση:';
$_['entry_order_status']							=	'Κατάσταση Παραγγελίας:';
$_['entry_sort_order']								=	'Σειρά Ταξινόμισης:';

// Error
$_['error_permission']								=	'Προσοχή: Δεν έχετε δικαίωμα να τροποποιήσετε τις πληρωμές μέσω Alpha Bank Gr!';
$_['error_merchant_id']								=	'Απαιτείται ο Κωδικός Εμπόρου!';
$_['error_shared_secret']							=	'Απαιτείται το Shared Secret!';
$_['error_installments_normal_offset']				=	'Η περίοδος χάρητος πρέπει να είναι ένας ακέραιος αριθμός μεγαλύτερος του μηδενός';
$_['error_installments_recurring_frequency']		=	'Αποδεκτές τιμές 1-28';
$_['error_installments_recurring_end_date']			=	'Η ημερομηνία πρέπει να είναι της ακόλουθης μορφής. π.χ. 00-00-0000';
$_['error_sort_order']								=	'Η Σειρά Ταξινόμισης πρέπει να είναι αριθμός!';

// Info
$_['credits']										=	'Περί';
$_['credits_info']									=	'<a onclick="window.open(\'http://www.gkasios.com\');"><img src="view/image/payment/GKASIOS_Logo.png" alt="GKASIOS" title="GKASIOS"></a>';
$_['license']										=	'Άδεια Χρήσης';
$_['license_info']									=	'Παρέχεται από την GKASIOS κάτω από την άδεια GNU/GPL.<br /><span class="help">Με επιφύλαξη παντός δικαιώματος.</span>';
$_['donate']										=	'Δωρεά';
$_['donate_info']									=	'<img border="0" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" alt="Δωρεά" title="Δωρεά" onclick="submitPaypal()">';
?>