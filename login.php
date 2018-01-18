<?php
include("header.php");
?>
<div class="grid_12">
    <div class="contentpanel">
        <?php
        if ($login) {
            echo 'You already logged in';
        } else {
            ?>
            <form method="post" action="process_login.php">
                <table class="tab">
                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" value="admin" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="admin" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="login" value="Login" /></td>
                    </tr>
                </table>

            </form>
        </div>
    </div>


    <?php
}
include("footer.php");
?>