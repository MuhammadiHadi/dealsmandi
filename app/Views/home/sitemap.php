<?php echo "<?xml version='1.0' encoding='UTF-8' ?>"; ?>
<?php echo "<urlset xmlns='http://www.sitemaps.org/schemas/sitemap/0.9'>"; ?>
<?php echo "<url>
        <loc>";  echo base_url(); echo "</loc>
        <lastmod>2023-02-19T17:55:28Z</lastmod>
    </url>";?>


    <!-- Sitemap -->
    <?php foreach($view_data as $urls) { ?>
    <url>
        <loc><?php echo base_url()."/".$urls->url ?></loc>
        <lastmod>2023-02-19T17:55:28Z</lastmod>
    </url>
    <?php } ?>


</urlset>
