<?php

echo json_encode([
    'hostname'  => gethostname(),
    'microtime' => microtime(true),
], JSON_PRETTY_PRINT);
