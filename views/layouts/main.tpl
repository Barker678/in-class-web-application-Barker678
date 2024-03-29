<html>
    <head>
        <title>Quick and affordable student recipes - StudentRecipes</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="./styles/styles.min.css">
        <script src="https://kit.fontawesome.com/3705849028.js" crossorigin="anonymous"></script>
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
        <link rel="manifest" href="manifest.json" />
    </head>
    <body class="{$view_name}-page">
        <header>
            <div class="container p-0">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.html">Student Recipes</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="categories.html">Recipes</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="login.html">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="join.html">Join</a>
                            </li>
                        </ul>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Find Recipe</button>
                        </form>
                    </div>
                </nav>
            </div>
        </header>
        
        {block name="body"}{/block}
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