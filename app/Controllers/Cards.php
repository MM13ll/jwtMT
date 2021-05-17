<?php

namespace App\Controllers;

use App\Models\MainModel;
use CodeIgniter\HTTP\Response;
use CodeIgniter\HTTP\ResponseInterface;
use Exception;

class Cards extends BaseController
{
	public function get_all()
	{
		$model = new MainModel();
		return $this->getResponse(
				[
						'message' => 'Cards retrieved successfully',
						'Cards' => $model->cards_get_all()
				]
		);
	}
}
