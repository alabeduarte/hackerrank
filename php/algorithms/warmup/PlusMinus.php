<?php
$handle = fopen("php://stdin","r");

$size = fgets($handle);
$numbers = array_map(
  function ($n) { return intval($n); },
  explode(" ", fgets($handle))
);

$only_positive_numbers = array_filter($numbers, function($n) { return $n > 0; });
$only_negative_numbers = array_filter($numbers, function($n) { return $n < 0; });
$only_zeroes = array_filter($numbers, function($n) { return $n == 0; });

echo count($only_positive_numbers)/$size, "\n";
echo count($only_negative_numbers)/$size, "\n";
echo count($only_zeroes)/$size, "\n";

fclose($handle);
?>
