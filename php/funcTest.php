<html>
  <head>
    <title>Functions</title>
  </head>
    <body>
        <form method="POST" action="http://127.0.2.1/funcTest.php">
        Please enter an integer value: 
        <input type="number" name="n" />
        <input type="submit" name="f" value= "Factorial" />
        </form>
        <?php
		if (isset($_POST["n"])){
			require_once('./func.php');
			$n = $_POST["n"];
			$r = fact($n);
			echo "<div>Fact($n)= $r</div>\n";
		}
		?>
    </body>
</html>