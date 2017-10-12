<?php

require_once "../database/db.php";

header('Content-Type: application/json');

$response = array(
    'success' => false
);

if (count($_POST)) {

    $name = trim($_POST['name']);
    $phone = trim($_POST['phone']);
    $email = trim($_POST['email']);
    $department = trim($_POST['department']);
    $login = trim($_POST['login']);
    $password = trim($_POST['password']);

    if (isset($_POST['id']) && $_POST['id']) { //edit

        $id = intval($_POST['id']);

        $sql = "UPDATE employees
                SET name = ?, phone = ?, email = ?, department = ?, login = ?, password = ?
                WHERE id = ?";
        $stmt = DB::prepare($sql);
        $stmt->execute(array($name, $phone, $email, $department, $login, $password, $id));

    } else { //add

        $sql = "INSERT INTO employees (name, phone, email, department, login, password)
                VALUES (?, ?, ?, ?, ?, ?)";
        $stmt = DB::prepare($sql);
        $stmt->execute(array($name, $phone, $email, $department, $login, $password));
        $response['id'] = DB::lastInsertId();

    }

    $response['success'] = true;

}

print json_encode($response);