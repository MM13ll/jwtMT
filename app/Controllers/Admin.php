<?php

namespace App\Controllers;

use App\Models\AdminModel;
use CodeIgniter\HTTP\Response;
use CodeIgniter\HTTP\ResponseInterface;
use Exception;
use ReflectionException;

class Admin extends BaseController
{
    /**
     * Register a new Admin
     * @return Response
     * @throws ReflectionException
     */
    public function register()
    {
        $rules = [
            'name' => 'required',
            'email' => 'required|min_length[6]|max_length[50]|valid_email|is_unique[admin.email]',
            'password' => 'required|min_length[8]|max_length[255]'
        ];

 $input = $this->getRequestInput($this->request);
        if (!$this->validateRequest($input, $rules)) {
            return $this
                ->getResponse(
                    $this->validator->getErrors(),
                    ResponseInterface::HTTP_BAD_REQUEST
                );
        }

      $adminModel = new AdminModel();
      $adminModel->save($input);




return $this
            ->getJWTForAdmin(
                $input['email'],
                ResponseInterface::HTTP_CREATED
            );

    }

    /**
     * Adminenticate Existing Admin
     * @return Response
     */
    public function login()
    {
        $rules = [
            'email' => 'required|min_length[6]|max_length[50]|valid_email',
            'password' => 'required|min_length[8]|max_length[255]|validateAdmin[email, password]'
        ];

        $errors = [
            'password' => [
                'validateAdmin' => 'Invalid login credentials provided'
            ]
        ];

$input = $this->getRequestInput($this->request);


        if (!$this->validateRequest($input, $rules, $errors)) {
            return $this
                ->getResponse(
                    $this->validator->getErrors(),
                    ResponseInterface::HTTP_BAD_REQUEST
                );
        }
       return $this->getJWTForAdmin($input['email']);


    }

    private function getJWTForAdmin(
        string $emailAddress,
        int $responseCode = ResponseInterface::HTTP_OK
    )
    {
        try {
            $model = new AdminModel();
            $admin = $model->findAdminByEmailAddress($emailAddress);
            unset($admin['password']);

            helper('jwt');

            return $this
                ->getResponse(
                    [
                        'message' => 'Admin authenticated successfully',
                        'admin' => $admin,
                        'access_token' => getSignedJWTForAdmin($emailAddress)
                    ]
                );
        } catch (Exception $exception) {
            return $this
                ->getResponse(
                    [
                        'error' => $exception->getMessage(),
                    ],
                    $responseCode
                );
        }
    }
}
