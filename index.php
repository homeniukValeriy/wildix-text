<?php

$content = file_get_contents("html/index.html");

$content = str_replace(
    array(
        "<!--VERSION-->"
    ),
    array(
        "?v=" . time()
    ),
    $content);

print $content;