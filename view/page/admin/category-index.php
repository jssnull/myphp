<div class="container">
    <div class="row">
        <div class="col l3 s12 m-b-1">
            <a class="waves-effect waves-light btn blue lighten-2 btn-block" href="<?=baseurl('admin/product')?>">
                <i class="material-icons left">assignment</i>Product List
            </a>
        </div>
        <div class="col l3 s12 m-b-1">
            <a class="waves-effect waves-light btn blue lighten-2 btn-block" href="<?=baseurl('admin/category-create')?>">
                <i class="material-icons left">add</i>New Category
            </a>
        </div>
        <div class="col l3 s12 m-b-1">
            <a class="waves-effect waves-light btn blue lighten-2 btn-block" href="<?=baseurl('admin/order')?>">
                <i class="material-icons left">receipt</i>Order List
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col s12">
            <?php if (count($categories) > 0) : ?>
                <ul class="collection">
                    <?php foreach($categories as $key => $category) : ?>
                        <li class="collection-item">
                            <b><span class="title bold"><?=$category['name']?></span></b>
                            <div class="secondary-content">
                                <a href="<?=baseurl('admin/category-edit/'.$category['id'])?>"><i class="material-icons blue-text text-lighten-1">edit</i></a>
                                <a href="<?=baseurl('admin/category-delete/'.$category['id'])?>"><i class="material-icons red-text text-lighten-2">delete</i></a>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            <?php else : ?>
                <h5 class="grey-text center-align">No Category List</h5>
            <?php endif; ?>
        </div>
    </div>
</div>