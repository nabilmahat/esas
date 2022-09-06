<?php
try {

    $row = 1;
    if (($handle = fopen(__DIR__ ."../sample.csv", "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 0, ",")) !== FALSE) {        
            echo $data[0] . "-----" . $data[5] . "<br />\n";        
        }
    fclose($handle);
}
} catch(Exception $e) {
    echo 'Message: ' .$e->getMessage();
}
?>