<?php
include_once('../database/pdo.php');
$name = $_POST['name'];
$message = $_POST['message'];
$postId = $_POST['post_id'];

$insert = $pdo->prepare("INSERT INTO `comments` (`author_name`, `body`, `post_id`, `created_at`) VALUES (:author_name, :body, :post_id, CURRENT_TIMESTAMP) ");
$insert->execute([
    ':author_name' => $name,
    ':body' => $message,
    ':post_id' => $postId,
]);

header("Location: ../../post.php?id=$postId");