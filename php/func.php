<?php
function fact($i) {
    if ($i <= 1)
		return 1;
	return $i * fact($i - 1);
}

$n = readline("Please enter an integer value: ");

echo "Fact($n)= " . fact($n) . "\n";
?>
