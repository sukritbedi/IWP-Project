<!DOCTYPE html>
<html lang="en" dir="ltr">
  <?php include 'login.php'; ?>
  <link rel="stylesheet" href="master.css">
  <head>
    <meta charset="utf-8">
    <title>IWP Project | CSE3002 J Component</title>
    <link rel="icon" type="image/png" sizes="16x16" href="../img/filmroll.png">  </head>
  <body>
    <div class="container">
      <span>Sign In</span>
    </div>
    <div class="imgcontainer">
      <img src="../img/img-01.png" alt="">
    </div>
    <div class="maincontainer">
      <form action="index.php" method="post">
        <label for="userid">Email : </label><br><br>
        <input type="text" name="email" placeholder=" Enter the email"><br><br><br>

        <label for="pass">Password : </label><br><br>
        <input type="password" name="pass" placeholder="Enter the password"><br><br><br>
        <input type="submit" name="submit" value="submit">
      </form>
    </div>
  </body>
</html>
