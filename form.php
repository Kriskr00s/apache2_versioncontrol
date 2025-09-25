<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $input = $_POST['input'];
    file_put_contents("sisendid.txt", $input . "\n", FILE_APPEND);
}
?>
<form method="post">
    Sisestage tekst: <input type="text" name="input">
    <input type="submit">
</form>
