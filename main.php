<?php
require_once "connection.php";

$table = "kerdesek";

$result = $conn->query("SELECT * FROM kerdesek");
$data = [];
if($result->rowCount() > 0) {
    while ($row = $result->fetch(\PDO::FETCH_ASSOC)) {
        $data[] = $row;
    }
} else {
    echo "No data!";
    exit;
}

echo nl2br(json_encode($data, JSON_UNESCAPED_UNICODE));
?>