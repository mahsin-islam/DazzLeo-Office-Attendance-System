<?php
include("header.php");

if (isset($_POST['submit'])) {
    $name       = $_POST['name'];
    $gender     = $_POST['gender'];
    $bdate      = $_POST['bdate'];
    $joining    = $_POST['joining'];
    $position   = $_POST['position'];

    $username   = $_POST['username'];
    $password   = MD5($_POST['password']);

    $created    = time();

    mysql_query("INSERT INTO `employee_information` (`name`, `gender`, `bdate`, `joining`, `position`, `created`, `status`) VALUES ('$name', '$gender', '$bdate', '$joining', '$position', '$created', '1');");

    $empID = mysql_insert_id();

    mysql_query("INSERT INTO `users` (`empID`,`username`, `password`) VALUES ('$empID','$username', '$password');");
}
?>
<div class="grid_12">
    <div class="contentpanel">
        <?php
        if (isset($_POST['submit'])) {
            echo 'saved successfully';
        } else {
            ?>
            <form method="post" action="">
                <table cellpadding="5">
                    <tr>
                        <td>Employee Name:</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <input type="radio" name="gender" value="Male" /> Male
                            <input type="radio" name="gender" value="Female" /> Female
                        </td>
                    </tr>
                    <tr>
                        <td>Birth Date:</td>
                        <td><input type="text" name="bdate" value="" /></td>
                    </tr>
                    <tr>
                        <td>Joining Date:</td>
                        <td><input type="text" name="joining" value="" /></td>
                    </tr>
                    <tr>
                        <td>Position:</td>
                        <td>
                            <select name="position">
                                <option value="">Select One</option>
                                <option value="1">Managing Director</option>
                                <option value="2">Manager</option>
                                <option value="3">Software Engineer</option>
                                <option value="4">Junior Software Engineer</option>
                                <option value="5">Trainee Programmer</option>
                                <option value="6">Receptionist</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>Username:</td>
                        <td><input type="text" name="username" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td><input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="submit" value="Save" /></td>
                    </tr>
                </table>

            </form>
        </div>
    </div>


    <?php
}
include_once 'footer.php';
?>