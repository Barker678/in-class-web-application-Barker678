{extend file="layouts/main.tpl"}
{block name="body"}
<div class="hero" style="background-image: url('./images/banner_1.jpg');">
            <div class="container">
                <h1>Login to your account</h1>
            </div>
        </div>

        <div class="container mt-5">
            <form action="" method="post" class="mt-3">
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
{/block}