<?php

$gitid = file_get_contents('.git/refs/heads/master');

echo json_encode([
    'gitid'  => trim($gitid),
    'hostname'  => gethostname(),
    'microtime' => microtime(true),
], JSON_PRETTY_PRINT);
