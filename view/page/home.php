<div class="container">
    <div class="section">
        <?php foreach (chunk($products, 4) as $rows) : ?>
            <div class="row">
                <?php foreach ($rows as $product) : ?>
                    <div class="col s12 m3 product">
                        <div class="icon-block">
                            <div class="square valign-wrapper">
                                <div><img class="responsive-img product-card" src="<?=getImage($product['images'])?>" alt="<?=$product['slug']?>"></div>
                            </div>
                            <div>
                                <a href="<?=baseurl('shop/cart?product='.$product['id'])?>" class="right orange waves-effect waves-light btn buy">Buy</a>
                                <h5 class="title">
                                    <?=$product['name']?>
                                    <br>
                                    <small class="grey-text"><?=$product['category_name']?></small>
                                </h5>
                                <div class="light">Rp. <?=number_format($product['price'])?></div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        <?php endforeach; ?>
    </div>
</div>