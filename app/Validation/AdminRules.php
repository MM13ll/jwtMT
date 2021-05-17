<?php

namespace App\Validation;

use App\Models\AdminModel;
use Exception;

class AdminRules
{
    public function validateAdmin(string $str, string $fields, array $data): bool
    {
        try {
            $model = new AdminModel();
            $admin = $model->findAdminByEmailAddress($data['email']);
            return password_verify($data['password'], $admin['password']);
        } catch (Exception $e) {
            return false;
        }
    }
}
