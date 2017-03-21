<?php
  $handle = fopen("php://stdin","r");

  // ignore the first input
  fgets($handle);
  $_values = explode(" ", fgets($handle));
  $_array = array_map(function ($n) { return intval($n); }, $_values);

  $sum = array_reduce($_array, function ($previous, $current) {
    return $previous + $current;
  }, 0);

  print($sum);

  fclose($handle);
?>
