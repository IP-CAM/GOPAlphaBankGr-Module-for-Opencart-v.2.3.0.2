<?php
/**
 * @extension-payment	GOP_AlphaBankGr
 * @author-name			Michail Gkasios
 * @copyright			Copyright (C) 2013 GKASIOS
 * @license				GNU/GPL, see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt
 */

class ControllerExtensionPaymentGOPAlphaBankGr extends Controller
{
	private $error = array();

	public function index()
	{
		$this->load->model('setting/setting');

		if(($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate())
		{
			$this->model_setting_setting->editSetting('GOP_AlphaBankGr', $this->request->post);

			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true));
		}

		//Language Loading
		$data = array();
		$data += $this->language->load('extension/payment/GOP_AlphaBankGr');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array	(
											'text'	=>	$this->language->get('text_home'),
											'href' 	=> 	$this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
										);

		$data['breadcrumbs'][] = array	(
											'text'	=>	$this->language->get('text_payment'),
											'href' 	=> 	$this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true)
										);

		$data['breadcrumbs'][] = array	(
											'text'	=>	$this->language->get('heading_title'),
											'href' 	=> 	$this->url->link('extension/payment/GOP_AlphaBankGr', 'token=' . $this->session->data['token'], true)
										);

		$data['small_logo'] = "view/image/extension/payment/GKASIOS_Logo_Main_Animated.gif";
		$data['paypal_button_id'] ='Y27H6D3DRWWKU';

		$data['action'] = $this->url->link('extension/payment/GOP_AlphaBankGr', 'token=' . $this->session->data['token'], true);
		$data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=payment', true);

		if(isset($this->request->post['GOP_AlphaBankGr_merchant_id']))
		{
			$data['GOP_AlphaBankGr_merchant_id'] = $this->request->post['GOP_AlphaBankGr_merchant_id'];
		}
		else
		{
			$data['GOP_AlphaBankGr_merchant_id'] = $this->config->get('GOP_AlphaBankGr_merchant_id');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_shared_secret']))
		{
			$data['GOP_AlphaBankGr_shared_secret'] = $this->request->post['GOP_AlphaBankGr_shared_secret'];
		}
		else
		{
			$data['GOP_AlphaBankGr_shared_secret'] = $this->config->get('GOP_AlphaBankGr_shared_secret');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_mode']))
		{
			$data['GOP_AlphaBankGr_mode'] = $this->request->post['GOP_AlphaBankGr_mode'];
		}
		else
		{
			$data['GOP_AlphaBankGr_mode'] = $this->config->get('GOP_AlphaBankGr_mode');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_merchant_hosted_payment']))
		{
			$data['GOP_AlphaBankGr_merchant_hosted_payment'] = $this->request->post['GOP_AlphaBankGr_merchant_hosted_payment'];
		}
		else
		{
			$data['GOP_AlphaBankGr_merchant_hosted_payment'] = $this->config->get('GOP_AlphaBankGr_merchant_hosted_payment');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_transaction_type']))
		{
			$data['GOP_AlphaBankGr_transaction_type'] = $this->request->post['GOP_AlphaBankGr_transaction_type'];
		}
		else
		{
			$data['GOP_AlphaBankGr_transaction_type'] = $this->config->get('GOP_AlphaBankGr_transaction_type');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_installments_type']))
		{
			$data['GOP_AlphaBankGr_installments_type'] = $this->request->post['GOP_AlphaBankGr_installments_type'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_type'] = $this->config->get('GOP_AlphaBankGr_installments_type');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_installments_normal_period']))
		{
			$data['GOP_AlphaBankGr_installments_normal_period'] = $this->request->post['GOP_AlphaBankGr_installments_normal_period'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_normal_period'] = $this->config->get('GOP_AlphaBankGr_installments_normal_period');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_installments_normal_offset']))
		{
			$data['GOP_AlphaBankGr_installments_normal_offset'] = $this->request->post['GOP_AlphaBankGr_installments_normal_offset'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_normal_offset'] = $this->config->get('GOP_AlphaBankGr_installments_normal_offset');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_installments_recurring_frequency']))
		{
			$data['GOP_AlphaBankGr_installments_recurring_frequency'] = $this->request->post['GOP_AlphaBankGr_installments_recurring_frequency'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_recurring_frequency'] = $this->config->get('GOP_AlphaBankGr_installments_recurring_frequency');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_installments_recurring_end_date']))
		{
			$data['GOP_AlphaBankGr_installments_recurring_end_date'] = $this->request->post['GOP_AlphaBankGr_installments_recurring_end_date'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_recurring_end_date'] = $this->config->get('GOP_AlphaBankGr_installments_recurring_end_date');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_css_url']))
		{
			$data['GOP_AlphaBankGr_css_url'] = $this->request->post['GOP_AlphaBankGr_css_url'];
		}
		else
		{
			$data['GOP_AlphaBankGr_css_url'] = $this->config->get('GOP_AlphaBankGr_css_url');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_total']))
		{
			$data['GOP_AlphaBankGr_total'] = $this->request->post['GOP_AlphaBankGr_total'];
		}
		else
		{
			$data['GOP_AlphaBankGr_total'] = $this->config->get('GOP_AlphaBankGr_total');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_order_status_id']))
		{
			$data['GOP_AlphaBankGr_order_status_id'] = $this->request->post['GOP_AlphaBankGr_order_status_id'];
		}
		else
		{
			$data['GOP_AlphaBankGr_order_status_id'] = $this->config->get('GOP_AlphaBankGr_order_status_id');
		}

		$this->load->model('localisation/order_status');

		$data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();

		if(isset($this->request->post['GOP_AlphaBankGr_geo_zone_id']))
		{
			$data['GOP_AlphaBankGr_geo_zone_id'] = $this->request->post['GOP_AlphaBankGr_geo_zone_id'];
		}
		else
		{
			$data['GOP_AlphaBankGr_geo_zone_id'] = $this->config->get('GOP_AlphaBankGr_geo_zone_id');
		}

		$this->load->model('localisation/geo_zone');

		$geo_zones = Array (0 => Array("geo_zone_id" => 0, "name" => $data['text_all_zones'], "description" => $data['text_all_zones'], "date_modified" => '0000-00-00 00:00:00', "date_added" => '0000-00-00 00:00:00'));
		$geo_zones = array_merge($geo_zones, $this->model_localisation_geo_zone->getGeoZones());
		$data['geo_zones'] = $geo_zones;


		if(isset($this->request->post['GOP_AlphaBankGr_status']))
		{
			$data['GOP_AlphaBankGr_status'] = $this->request->post['GOP_AlphaBankGr_status'];
		}
		else
		{
			$data['GOP_AlphaBankGr_status'] = $this->config->get('GOP_AlphaBankGr_status');
		}

		if(isset($this->request->post['GOP_AlphaBankGr_sort_order']))
		{
			$data['GOP_AlphaBankGr_sort_order'] = $this->request->post['GOP_AlphaBankGr_sort_order'];
		}
		else
		{
			$data['GOP_AlphaBankGr_sort_order'] = $this->config->get('GOP_AlphaBankGr_sort_order');
		}

		//Errors

		if(isset($this->error['GOP_AlphaBankGr_warning']))
		{
			$data['GOP_AlphaBankGr_warning_error'] = $this->error['GOP_AlphaBankGr_warning'];
		}
		else
		{
			$data['GOP_AlphaBankGr_warning_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_merchant_id']))
		{
			$data['GOP_AlphaBankGr_merchant_id_error'] = $this->error['GOP_AlphaBankGr_merchant_id'];
		}
		else
		{
			$data['GOP_AlphaBankGr_merchant_id_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_shared_secret']))
		{
			$data['GOP_AlphaBankGr_shared_secret_error'] = $this->error['GOP_AlphaBankGr_shared_secret'];
		}
		else
		{
			$data['GOP_AlphaBankGr_shared_secret_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_installments_normal_offset']))
		{
			$data['GOP_AlphaBankGr_installments_normal_offset_error'] = $this->error['GOP_AlphaBankGr_installments_normal_offset'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_normal_offset_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_installments_recurring_frequency']))
		{
			$data['GOP_AlphaBankGr_installments_recurring_frequency_error'] = $this->error['GOP_AlphaBankGr_installments_recurring_frequency'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_recurring_frequency_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_installments_recurring_end_date']))
		{
			$data['GOP_AlphaBankGr_installments_recurring_end_date_error'] = $this->error['GOP_AlphaBankGr_installments_recurring_end_date'];
		}
		else
		{
			$data['GOP_AlphaBankGr_installments_recurring_end_date_error'] = '';
		}

		if(isset($this->error['GOP_AlphaBankGr_sort_order']))
		{
			$data['GOP_AlphaBankGr_sort_order_error'] = $this->error['GOP_AlphaBankGr_sort_order'];
		}
		else
		{
			$data['GOP_AlphaBankGr_sort_order_error'] = '';
		}

		//-----------------------Render--------------------------

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/payment/GOP_AlphaBankGr.tpl', $data));
	}

	private function validate()
	{
		$this->language->load('extension/payment/GOP_AlphaBankGr');

		if(!$this->user->hasPermission('modify', 'extension/payment/GOP_AlphaBankGr'))
		{
			$this->error['GOP_AlphaBankGr_warning'] = $this->language->get('error_permission');
		}

		if(!$this->request->post['GOP_AlphaBankGr_merchant_id'])
		{
			$this->error['GOP_AlphaBankGr_merchant_id'] = $this->language->get('error_merchant_id');
		}

		if(!$this->request->post['GOP_AlphaBankGr_shared_secret'])
		{
			$this->error['GOP_AlphaBankGr_shared_secret'] = $this->language->get('error_shared_secret');
		}

		if($this->request->post['GOP_AlphaBankGr_installments_type'] == 1 )
		{
			if($this->request->post['GOP_AlphaBankGr_installments_normal_offset'] != '' && (!is_numeric($this->request->post['GOP_AlphaBankGr_installments_normal_offset']) || $this->request->post['GOP_AlphaBankGr_installments_normal_offset'] < 1 || !is_int($this->request->post['GOP_AlphaBankGr_installments_normal_offset'])))
			{
				$this->error['GOP_AlphaBankGr_installments_normal_offset'] = $this->language->get('error_installments_normal_offset');
			}
		}
		elseif($this->request->post['GOP_AlphaBankGr_installments_type'] == 2)
		{
			if($this->request->post['GOP_AlphaBankGr_installments_recurring_frequency'] != '' || !is_numeric($this->request->post['GOP_AlphaBankGr_installments_recurring_frequency']) || !is_int($this->request->post['GOP_AlphaBankGr_installments_recurring_frequency']) || $this->request->post['GOP_AlphaBankGr_installments_recurring_frequency'] < 1 || $this->request->post['GOP_AlphaBankGr_installments_recurring_frequency'] > 28)
			{
				$this->error['GOP_AlphaBankGr_installments_recurring_frequency'] = $this->language->get('error_installments_recurring_frequency');
			}

			if(!$this->request->post['GOP_AlphaBankGr_installments_recurring_end_date'])
			{
				$date_parts = explode("-", $this->request->post['GOP_AlphaBankGr_installments_recurring_end_date']);
				if(count($date_parts) != 3 || !is_numeric($date_parts[0]) || !is_numeric($date_parts[1]) || !is_numeric($date_parts[2]))
				{
					$this->error['GOP_AlphaBankGr_installments_recurring_end_date'] = $this->language->get('error_installments_recurring_end_date');
				}
			}
		}

		if($this->request->post['GOP_AlphaBankGr_sort_order'] != '' && !is_numeric($this->request->post['GOP_AlphaBankGr_sort_order']))
		{
			$this->error['GOP_AlphaBankGr_sort_order'] = $this->language->get('error_sort_order');
		}

		return !$this->error;
	}

	public function install()
	{
		$this->load->model('extension/payment/GOP_AlphaBankGr');
		$this->model_extension_payment_GOP_AlphaBankGr->install();
	}

	public function uninstall()
	{
		$this->load->model('extension/payment/GOP_AlphaBankGr');
		$this->model_extension_payment_GOP_AlphaBankGr->uninstall();
	}
}
?>