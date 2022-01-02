<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>

<?php

  $user = "root";
  $password = "";
  $mydb = "mariadb";

  $link = mysqli_connect("localhost", $user, $password, $mydb);

  if (!$link){
    die('Could not connect: ' . mysqli_error());
  }

  if (isset($_POST['submit1'])){
    echo '  Connected Successfully.';
    mysqli_select_db($link, $mydb);

    $prof_ssn = $_POST["ssn"];      
    $query = "SELECT 	C.TITLE, S.CLASSROOM, S.MEETING, S.BEGIN_TIME, S.END_TIME
              FROM Courses C, Sections S, Professors P
              WHERE P.SSN = '$prof_ssn' AND P.SSN = S.S_SSN AND S.S_CNUM = C.CNUM";
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
    <h2> Listed Classes: </h2>
  </div>
  <div class="container-fluid text-center">
    <table class="table table-striped table-bordered table-hover">
      <thead>
        <tr class="info text-center">
          <th>Title</th>
          <th>Classrooms</th>
          <th>Meeting Days</th>
          <th>Start Time</th>
          <th>End Time</th>
        </tr>
      </thead>
      <tbody>

        <?php
          while($row = mysqli_fetch_assoc($result))
          {
        ?>

        <tr>
          <td><?php echo $row["TITLE"];?> </td>
          <td><?php echo $row["CLASSROOM"];?></td>
          <td><?php echo $row["MEETING"];?></td>
          <td><?php echo $row["BEGIN_TIME"] ?? "";?></td>
          <td><?php echo $row["END_TIME"] ?? "";?></td>
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