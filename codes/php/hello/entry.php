#!/usr/bin/php
<?php

if (sizeof($argv) < 2) {
    echo "Please enter an integer value\n";
    exit();
}

$n = $argv[1];
echo "Fact($n)= " . fact($n) . "\n";

function fact($i) {
    if ($i <= 0) return 1;
    return $i * fact($i - 1);
}
?>
