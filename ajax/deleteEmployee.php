<?php

require_once "../database/db.php";

header('Content-Type: application/json');

$response = array(
    'success' => false
);

if (isset($_POST['id']) && $_POST['id']) {

    $sql = "DELETE FROM employees WHERE id = ?";
    $stmt = DB::prepare($sql);
    $stmt->execute(array(intval($_POST['id'])));

    $response['success'] = true;

}

print json_encode($response);