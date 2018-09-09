<!DOCTYPE html>
<html lang="en" dir="ltr">
  <?php include 'signup.php'; ?>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form action="index.php" method="post">
      <label for="name">Name : </label>
      <input type="text" name="name" placeholder="Enter your Name"><br>

      <label for="pnum">Phone Number : </label>
      <input type="text" name="pnum" placeholder="Enter the Phone Number"><br>

      <label for="email">Email : </label>
      <input type="email" name="email" placeholder="Enter your email"><br>

      <label for="pass">Password : </label>
      <input type="password" name="pass" placeholder="Enter the Password"><br>
      <input type="submit" name="submit" value="submit"><br>
      <?php echo($datacheck) ?>
    </form>
  </body>
</html>
