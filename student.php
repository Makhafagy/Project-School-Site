<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>

<?php

  $user = "root";
  $password = "";
  $mydb = "mariadb";

  $link = mysqli_connect("localhost", $user, $password, $mydb);

  if (!$link){
    die('Could not connect: ' . mysqli_error());
  }

  if (isset($_POST['submit4'])){
    echo '  Connected Successfully.';
    mysqli_select_db($link, $mydb);

    $studentCWID = $_POST["cwid"];
    $query = "SELECT C.TITLE, E.GRADE
              FROM Enrollment E, Courses C, Sections S, Students T
              WHERE  T.CWID = E.E_CWID AND E.E_SNUM = S.SNUM
              AND S.S_CNUM = C.CNUM AND E.E_CWID = '$studentCWID'";
    $result = $link->query($query);

    if (!$result){
      echo "  query ran unsuccessfully: ($query) => " . mysqli_error($link);
      exit;
    }

    $num_rows = mysqli_num_rows($result);

    if ($num_rows > 0){
      echo "  $num_rows rows were found <br>";
    }
    else{
      echo '  No data found';
      exit;
    }
  }

?>

<body>
  <div class="container-fluid text-secondary text-center">
    <h2>Transcript</h2>
  </div>
  <div class="container-fluid text-center">
    <table class="table table-striped table-bordered table-hover">
      <thead>
        <tr class="info text-center">
            <th>Course</th>
            <th>Grade</th>
        </tr>
      </thead>
      <tbody>

      <?php
        while($row = mysqli_fetch_assoc($result))
        {
      ?>

        <tr>
            <td><?php echo $row["TITLE"];?></td>
            <td><?php echo $row["GRADE"];?></td>
        </tr>

      <?php
        }
      ?>

      </tbody>
    </table>
    <div class="text-center">
      <button type="button" class="btn btn-primary" onclick="goBack()">Return</button>
    </div>

    <script>
      function goBack() {
        window.history.back();
      }
    </script>

  </div>
</body>

</html>

<?php
mysqli_close($link);
?>