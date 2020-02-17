{extend file="layouts/main.tpl"}
{block name="body"}
<div class="carousel buttons-inside">
    <div class="carousel-slide" style="background-image: url('./images/banner_1.jpg');"></div>
    <div class="carousel-slide" style="background-image: url('./images/banner_2.jpg');"></div>
    <div class="carousel-slide" style="background-image: url('./images/banner_3.jpg');"></div>
</div>

<div class="container mt-5">
    <h2>Recently added recipes</h2>

    <div class="top-recipe-cards">
        <div class="card" style="width: 18rem;">
            <div class="recipe-card-image" style="background-image: url('./user_images/1.jpg');"></div>
            <div class="card-body">
                <h5 class="card-title">Crunchy Salad</h5>
                <p class="card-text">This lovely salad is quick to make and tastes amazing!</p>
                <a href="#" class="btn btn-primary">View recipe</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="recipe-card-image" style="background-image: url('./user_images/2.jpg');"></div>
            <div class="card-body">
                <h5 class="card-title">Crunchy Salad</h5>
                <p class="card-text">This lovely salad is quick to make and tastes amazing!</p>
                <a href="#" class="btn btn-primary">View recipe</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="recipe-card-image" style="background-image: url('./user_images/3.jpg');"></div>
            <div class="card-body">
                <h5 class="card-title">Crunchy Salad</h5>
                <p class="card-text">This lovely salad is quick to make and tastes amazing!</p>
                <a href="#" class="btn btn-primary">View recipe</a>
            </div>
        </div>
        <div class="card" style="width: 18rem;">
            <div class="recipe-card-image" style="background-image: url('./user_images/4.jpg');"></div>
            <div class="card-body">
                <h5 class="card-title">Crunchy Salad</h5>
                <p class="card-text">This lovely salad is quick to make and tastes amazing!</p>
                <a href="#" class="btn btn-primary">View recipe</a>
            </div>
        </div>
    </div>
</div>
{/block}