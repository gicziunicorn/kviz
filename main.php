<?php
require_once "connection.php";

if (!isset($conn)) {
    echo "Failed to connect to the database :(";
    exit;
}

$cmd = $conn->prepare("SELECT * FROM {$table};");
$cmd->execute();
$result = $cmd->get_result();
$data = [];
if($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
}

echo nl2br(json_encode($data, JSON_UNESCAPED_UNICODE));
?>