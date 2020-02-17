{extend file="layouts/main.tpl"}
{block name="body"}
<div class="hero" style="background-image: url('./images/banner_1.jpg');">
            <div class="container">
                <h1>Register an account</h1>
            </div>
        </div>

        <div class="container mt-5">
        {if $error}
            <div class="alert alert-danger" role"alert">
                {$error}
            </div>
        {/if}
            <form action="" method="post" class="mt-3">
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Password</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Password">
                </div>
                <div class="form-group">
                    <label for="fullName">Name</label>
                    <input type="text" class="form-control" id="fullName" name="fullName">
                </div>
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
        </div>
{/block}