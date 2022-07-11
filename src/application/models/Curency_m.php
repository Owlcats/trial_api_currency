<?php

class Curency_m extends CI_Model
{
	var $API ="";

	function __construct() {
        parent::__construct();
        $this->API="12f8d56d705976d51daef4a8";
    }

    public function curency_updated()
    {
        // set API Endpoint and API key
		$endpoint = 'latest';
		$params = 'EUR';

		// Initialize CURL:
		$ch = curl_init('https://v6.exchangerate-api.com/v6/'.$this->API.'/'.$endpoint.'/'.$params);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		// Store the data:
		$json = curl_exec($ch);
		curl_close($ch);

		// Decode JSON response:
		$exchangeRates = json_decode($json, true);

		// Access the exchange rate values, e.g. GBP:
		return $exchangeRates['conversion_rates'];
    }

    public function get_data_currency($code = ''){
    	$query = $this->db->select('curency_code as code,name,rate,date')
    						->from('owl_curency');

    	if ($code != "") {
    		$this->db->where('curency_code',$code);
    		$result = $query->get()->row();
    	}else{
    		$result = $query->get()->result();
    	}


    	if ($result) {
    		return $result;
    	}else{
    		return FALSE;
    	}
    }

    public function show_curency($code = ''){
    	$get_new_curency = $this->curency_updated();

    	if (!$get_new_curency || empty($get_new_curency)) {
    		$result = array('status' => 'error', 'msg' => 'Error get data currency');
    		return $result;
    	}

    	// $get_owl_currency = $this->get_data_currency($code);
    	$get_owl_all_currency = $this->get_data_currency('');

    	if (empty($get_owl_all_currency) || !$get_owl_all_currency) {
    		
    		foreach ($get_new_curency as $key => $value) {

    			$get_key = $key;
    			$get_value = $value;

    			$data_ins = array(
    				'curency_code' => $get_key,
    				'rate' => $get_value,
    				'date' => date('Y-m-d H:i:s') 
    			);

    			$this->db->insert('owl_curency',$data_ins);

    		}

    	}else{

    		foreach ($get_new_curency as $key => $value) {

    			$get_key = $key;
    			$get_value = $value;

    			$data_updt = array(
    				'rate' => $get_value,
    				'date' => date('Y-m-d H:i:s') 
    			);

    			$this->db->where('curency_code',$get_key);
    			$this->db->update('owl_curency',$data_updt);

    		}

    	}

    	$get_owl_currency = $this->get_data_currency($code);

    	if (empty($get_owl_currency) || !$get_owl_currency) {
    		$result = array('status' => 'error', 'msg' => 'Error get data currency');
    		return $result;
    	}

    	$result = array('status' => 'success', 'msg' => 'Success get data currency', 'data' => $get_owl_currency);
    	return $result;
    }
}