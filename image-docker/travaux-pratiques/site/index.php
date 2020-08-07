<?php
//create data folder when not exist
if (!is_dir('data')) {
    mkdir('data', 0777, true);
}
//generate unique id and save it in data/base.txt
$text = uniqid().PHP_EOL;;
$fp = fopen('data/base.txt', 'a');//opens file in append mode  
fwrite($fp, $text);  
fclose($fp);  
$lines = file("data/base.txt");

// Loop through the data/base.txt and show content.
foreach ($lines as $line_num => $line) {
    echo "Line #<b>{$line_num}</b> : " . $line . "<br />\n";
}
?>
