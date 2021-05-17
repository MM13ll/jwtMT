<?php

namespace App\Models;

use CodeIgniter\Model;
use Exception;

class AdminModel extends Model
{
    protected $table = 'admin';
    protected $allowedFields = [
        'name',
        'email',
        'password'
    ];

		protected $createdField = 'added_on';
    protected $updatedField = 'updated_on';

    protected $beforeInsert = ['beforeInsert'];
    protected $beforeUpdate = ['beforeUpdate'];

    protected function beforeInsert(array $data): array
    {
        return $this->getUpdatedDataWithHashedPassword($data);
    }

    protected function beforeUpdate(array $data): array
    {
        return $this->getUpdatedDataWithHashedPassword($data);
    }

    private function getUpdatedDataWithHashedPassword(array $data): array
    {
        if (isset($data['data']['password'])) {
            $plaintextPassword = $data['data']['password'];
            $data['data']['password'] = $this->hashPassword($plaintextPassword);
        }
        return $data;
    }

    private function hashPassword(string $plaintextPassword): string
    {
        return password_hash($plaintextPassword, PASSWORD_BCRYPT);
    }

    public function findAdminByEmailAddress(string $emailAddress)
    {
        $admin = $this
            ->asArray()
            ->where(['email' => $emailAddress])
            ->first();

        if (!$admin)
            throw new Exception('Admin does not exist for specified email address');

        return $admin;
    }
}
