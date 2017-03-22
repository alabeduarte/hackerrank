<?php
function solve_me_first($a, $b) {
  return $a + $b;
}

$handle = fopen ("php://stdin","r");

$a = fgets($handle);
$b = fgets($handle);

$sum = solve_me_first((int) $_a, (int) $_b);

print($sum);

fclose($handle);
?>
