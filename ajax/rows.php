<?php

require_once "../database/db.php";

header('Content-Type: application/json');

$employees = [];

$stmt = DB::query("SELECT * FROM employees");
foreach ($stmt as $item) {
    $employees[] = [
        'id' => $item['id'],
        'name' => $item['name'],
        'phone' => $item['phone'],
        'email' => $item['email'],
        'department' => $item['department'],
        'login' => $item['login'],
        'password' => $item['password'],
    ];
}

print json_encode($employees);