<?php>
$handle = fopen('php://stdin', 'r');
$time = fgets($handle);

$date = new DateTime($time);
echo $date->format('H:i:s');

fclose($handle);
?>
