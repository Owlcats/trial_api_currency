<?php
use Restserver\Libraries\REST_Controller;

defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/RestController.php';

use chriskacerguis\RestServer\RestController;

class Api extends RestController {

    function __construct()
    {
        parent::__construct();
        $this->load->model("Curency_m");
    }

    public function currency_get($code = '')
    {
       	$data = $this->Curency_m->show_curency($code);

       	// $data_key = $get_data;
        
        // $this->response($produk, REST_Controller::HTTP_OK);
        // echo '<pre>';
        // echo json_encode($data);
        $this->response($data, 200);
        // echo '</pre>';

        // echo json_encode($data);
    }

}