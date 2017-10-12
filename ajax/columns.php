<?php

header('Content-Type: application/json');

$columns = array(
    [
        'name' => 'id',
        'title' => 'ID',
        'visible' => false,
        'filterable' => false
    ],
    [
        'name' => 'name',
        'title' => 'Name'
    ],
    [
        'name' => 'phone',
        'title' => 'Phone',
        'breakpoints' => 'sm'
    ],
    [
        'name' => 'email',
        'title' => 'Email'
    ],
    [
        'name' => 'department',
        'title' => 'Department',
        'filterable' => false
    ],
    [
        'name' => 'login',
        'title' => 'Login',
        'filterable' => false
    ],
    [
        'name' => 'password',
        'title' => 'Password',
        'filterable' => false
    ]
);

print json_encode($columns);
