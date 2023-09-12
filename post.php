<?php
include_once('back/database/pdo.php');
$postId = $_GET['id'];
$articleSelect = $pdo->prepare("SELECT * FROM posts WHERE id = :id");
$articleSelect->execute([
        ':id' => $postId
]);
$article = $articleSelect->fetch(PDO::FETCH_ASSOC);

if (!$article) header("Location: 404.php");

$commentsSelect = $pdo->prepare("SELECT * FROM comments WHERE post_id = :id ORDER BY id DESC");
$commentsSelect->execute([
    ':id' => $postId
]);
$comments = $commentsSelect->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<?php include_once ('back/includes/head.php')?>
<body>
<div class="edica-loader"></div>
<?php include_once ('back/includes/header.php') ?>
<?php
ECHO <<<_END
<main class="blog-post">
    <div class="container">
        <h1 class="edica-page-title" data-aos="fade-up">$article[title]</h1>
        <p class="edica-blog-post-meta" data-aos="fade-up" data-aos-delay="200">Written by $article[author_name] • $article[created_at]</p>
        <section class="blog-post-featured-img" data-aos="fade-up" data-aos-delay="300">
            <img src="$article[image_inside]" alt="featured image" class="w-100">
        </section>
        <section class="post-content">
            $article[body]  
        </section>
        
        <div class="row">
                <div class="col-lg-9 mx-auto">
                    <section class="comment-section">
                        <h2 class="section-title mb-5" data-aos="fade-up">Leave a Reply</h2>
                        <form action="back/actions/addComment.php" method="post">
                        <input name="post_id" type="hidden" value="$postId">
                            <div class="row">
                                <div class="form-group col-12" data-aos="fade-up">
                                <label for="comment" class="sr-only">Comment</label>
                                <textarea name="message" id="comment" class="form-control" placeholder="Comment" rows="10">Comment</textarea>
                                </div>
                            </div>
                            <div class="row">
                                <div class="form-group col-md-4" data-aos="fade-right">
                                    <label for="name" class="sr-only">Name</label>
                                    <input type="text" name="name" id="name" class="form-control" placeholder="Name*">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-12" data-aos="fade-up">
                                    <input type="submit" value="Send Message" class="btn btn-warning">
                                </div>
                            </div>
                        </form>
                    </section>
_END;
?>
                    <section class="mb-10 bg-current" data-aos="fade-up">
                    <h2 class="section-title">Comments</h2>
                    <?php foreach ($comments as $comment) {
                        echo <<<_END
                        <div class="mt-5 mb-5">
                            <h5 class="pb-2 pt-2">$comment[author_name]</h5> <span>on $comment[created_at]</span>
                            <p>$comment[body]</p>
                        </div>
_END;
                    }?>

                    
                    <hr style="height:3px;border-width:3px;">
                    </section>
                </div>
            </div>
        
    </div>
    
</main>



<?php include_once ('back/includes/promote_feature.php') ?>

<?php include_once ('back/includes/footer.php') ?>

<?php include_once ('back/includes/scripts.php') ?>
</body>
</html>