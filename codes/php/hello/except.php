#!/usr/bin/php
<?php

class NegException extends Exception {
    public function errorMessage() {
        return "Negative numbers don't have a factorial!";
    }
}

class BigException extends Exception {
    public function errorMessage() {
        return "The number is too big!";
    }
}

function fact($i) {
    if ($i < 0) throw new NegException();
    if ($i > 5) throw new BigException();
    if ($i ==0) return 1;
    return $i * fact($i - 1);
}

if (sizeof($argv) < 2) {
    echo "Please enter an integer value\n";
    exit();
}

$n = $argv[1];

try {
    $f = fact($n);
    echo "Fact($n)= " . $f . "\n";
}
catch (NegException $e) {
    echo $e->errorMessage() . "\n";
}
catch (BigException $e) {
    echo $e->errorMessage() . "\n";
}
?>
