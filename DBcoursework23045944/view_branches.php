<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Table</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>Branches</header>
    <nav>
        <a href="index.php">Home</a>
        <a href="view_branches.php">View Branches</a>
        <a href="view_rooms.php">View Rooms</a>
        <a href="view_customers.php">View Customers</a>
        <a href="view_bookings.php">View Bookings</a>
        <a href="search.php">Search</a>
    </nav>
    <div class="content">
        <?php
        
        if ($Connection = oci_connect("y1o35", "rbJ8enfh")) {
            //echo "<p>Connection OK</p>";

            $sql = "SELECT * FROM Branch";
            $Statement = oci_parse($Connection, $sql);
            oci_execute($Statement);
            //echo "<p>SQL query executed...</p>";

            $numcols = oci_num_fields($Statement);

            echo "<table>";
            echo "<tr>";
            for ($i = 1; $i <= $numcols; $i++) {
                $colname = oci_field_name($Statement, $i);
                echo "<th>$colname</th>";
            }
            echo "</tr>";

            $rowCount = 0;
            while ($row = oci_fetch_array($Statement, OCI_ASSOC + OCI_RETURN_NULLS)) {
                echo "<tr>";
                foreach ($row as $item) {
                    echo "<td>" . ($item !== null ? htmlspecialchars($item) : "&nbsp;") . "</td>";
                }
                echo "</tr>";
                $rowCount++;
            }

            if ($rowCount === 0) {
                echo "<tr><td colspan='$numcols' class='no-results'>No bookings found.</td></tr>";
            }

            echo "</table>";

            $numrows = oci_num_rows($Statement);
            //echo "<p>Table has $numcols columns and $numrows rows</p>";

            oci_close($Connection);
            //echo "<p>Logged off.</p>";
        } else {
            $e = oci_error();
            echo "<p>Connection failed: " . htmlentities($e['message']) . "</p>";
        }
        ?>
    </div>
    <footer>&copy; <?php echo date("Y"); ?> EASE Ltd.</footer>
</body>
</html>