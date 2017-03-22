<?php
$handle = fopen ("php://stdin","r");
$height = fgets($handle);

$staircase = array_map(
  function($flood) use($height) {
    return str_repeat(" ", $height - $flood) . str_repeat("#", $flood);
  },
  range(1, $height)
);

foreach($staircase as &$floor) {
  echo $floor;
  echo "\n";
}

fclose($handle);
?>
