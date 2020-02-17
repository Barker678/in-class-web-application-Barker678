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

        <footer class="mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h2>Top recipes</h2>
                        <ul>
                            <li>
                                <a href="recipe.html">Crunchy Salad</a>
                            </li>
                            <li>
                                <a href="recipe.html">Beef Burger</a>
                            </li>
                            <li>
                                <a href="recipe.html">Noodles</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h2>Follow us</h2>
                        <ul>
                            <li>
                                <a href="">Facbeook</a>
                            </li>
                            <li>
                                <a href="">Twitter</a>
                            </li>
                            <li>
                                <a href="">LinkedIn</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <p>&copy; Student Recipes</p>
                        <p>Created for educational purposes</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- PWA -->
        <script>
            if ('serviceWorker' in navigator) {
                navigator.serviceWorker.register('service-worker.js');
            }
        </script>

        <!-- Custom JS -->
        <script src="scripts/scripts.min.js"></script>
        <script>
            $(function() {
                home.init();
            });
        </script>
    </body>
</html>
{/block}