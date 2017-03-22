<?php
function build_matrix($times, $handle) {
  return array_map(function ($n) use ($handle) {
    $_items = explode(" ", fgets($handle));

    return array_map(function ($item) {
      return intval($item);
    }, $_items);
  }, $times);
};

function sum($a, $b) {
  return $a + $b;
};

$handle = fopen("php://stdin","r");
$size = fgets($handle);
$times = range(0, ($size-1));

$matrix = build_matrix($times, $handle);

$primary_diagonal = array_map(function ($n) use ($matrix) {
  return $matrix[$n][$n];
}, $times);

$secondary_diagonal = array_map(function ($n) use ($matrix) {
  return $matrix[$n][(count($matrix) - 1) - $n];
}, $times);

$sum_across_primary_diagonal = array_reduce($primary_diagonal, sum);
$sum_across_secondary_diagonal = array_reduce($secondary_diagonal, sum);

print(abs($sum_across_primary_diagonal - $sum_across_secondary_diagonal));

fclose($handle);
?>
