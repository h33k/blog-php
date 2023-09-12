<!DOCTYPE html>
<html lang="en">
<?php include_once('back/database/pdo.php') ?>
<?php include_once('back/includes/head.php') ?>
<body>
    <div class="edica-loader"></div>
    <?php include_once('back/includes/header.php') ?>
    <main class="blog">
        <div class="container">
            <h1 class="edica-page-title" data-aos="fade-up">Blog</h1>
            <section class="featured-posts-section">
                <div class="row">

                    <?php
                        $posts = $pdo->query("SELECT id, title, author_name, created_at, image FROM posts ORDER BY id DESC")->fetchAll(PDO::FETCH_ASSOC);

                        foreach($posts as $post) {
                            ECHO <<<_END
                            <div class="col-md-4 fetured-post blog-post" data-aos="fade-right">
                                <div class="blog-post-thumbnail-wrapper">
                                    <img src="$post[image]" alt="blog post">
                                </div>
                                <p class="blog-post-category">$post[author_name] on $post[created_at]</p>
                                <a href="post.php?id=$post[id]" class="blog-post-permalink">
                                    <h6 class="blog-post-title">$post[title]</h6>
                                </a>
                            </div> 
_END;
                        }
                    ?>

                </div>
            </section>

    </main>
    <?php include_once('back/includes/promote_feature.php') ?>
    <?php include_once('back/includes/footer.php') ?>
    <?php include_once('back/includes/scripts.php') ?>
</body>
</html>