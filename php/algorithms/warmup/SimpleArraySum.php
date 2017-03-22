<?php
$handle = fopen("php://stdin","r");

// ignore the first input
fgets($handle);

$values = explode(" ", fgets($handle));
$numbers = array_map(function ($n) { return intval($n); }, $values);

$sum = array_reduce($numbers, function ($previous, $current) {
  return $previous + $current;
}, 0);

print($sum);

fclose($handle);
?>
