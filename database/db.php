<?php

define('DB_HOST', 'localhost');
define('DB_NAME', 'test_db');
define('DB_USER', 'root');
define('DB_PASS', '');

class DB {

    private static $instance = null;

    private function __construct(){}
    private function __clone(){}

    private static function getInstance()
    {
        if (self::$instance) {
            return self::$instance;
        }

        self::$instance = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME, DB_USER, DB_PASS);
        return self::$instance;
    }

    public static function __callStatic($name, $arguments)
    {
        $callback = array(self::getInstance(), $name);
        return call_user_func_array($callback, $arguments);
    }

}
