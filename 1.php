<?php

$gitid = file_get_contents('1.html');

echo json_encode([
    'gitid'  => trim($gitid),
    'hostname'  => gethostname(),
    'microtime' => microtime(true),
], JSON_PRETTY_PRINT);
