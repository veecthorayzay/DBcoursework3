<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Search Branch Details</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>Search Branch Details</header>
    <nav>
        <a href="index.php">Home</a>
        <a href="view_branches.php">View Branches</a>
        <a href="view_rooms.php">View Rooms</a>
        <a href="view_customers.php">View Customers</a>
        <a href="view_bookings.php">View Bookings</a>
        <a href="search.php">Search Rooms</a>
    </nav>
    <div class="content">
        <?php
        if ($Connection = oci_connect("y1o35", "rbJ8enfh")) {
            //echo "<p>Connection OK</p>";
        
            // Handle selected branch
            if (isset($_GET['BranchID'])) {
                $BranchID = $_GET['BranchID'];

                echo "<h2>Details for Branch ID: $BranchID</h2>";

                // Employees
                echo "<h3>Employees</h3>";
                $sql = "SELECT 
                Employee.EmployeeID,
                Employee.EFName AS EmployeeFirstName,
                Employee.ELName AS EmployeeLastName,
                Employee.EPosition AS EmployeePosition,
                Employee.EEmail AS EmployeeEmail,
                Branch.BName AS BranchName
                FROM Employee
                JOIN Branch ON Employee.BranchID = Branch.BranchID
                WHERE Employee.BranchID = :branchid";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                // Bookings
                echo "<h3>Bookings</h3>";
                $sql = "SELECT * FROM Booking WHERE BranchID = :branchid";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                //Supplies
                echo "<h3>Supplies</h3>";
                $sql = "SELECT 
                Supplies.SupplyDetails,
                Supplies.SupplyDate,  
                Supplies.BranchID,
                Supplies.SupplierID,
                Supplier.SContact AS SupplierContact
                FROM Supplies  
                JOIN Supplier ON Supplies.SupplierID = Supplier.SupplierID
                WHERE Supplies.BranchID = :branchid";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                echo '<p><a href="search.php">Back to Branch List</a></p>';
            } else {
                // Show list of branches
                echo "<h2>Select a Branch</h2>";
                $sql = "SELECT * FROM Branch";
                $stmt = oci_parse($Connection, $sql);
                oci_execute($stmt);

                echo '<div class="branch-list">';
                while ($row = oci_fetch_assoc($stmt)) {
                    echo '<a class="branch-card" href="search.php?BranchID=' . $row['BRANCHID'] . '">';
                    echo '<strong>' . htmlspecialchars($row['BNAME']) . '</strong><br>';
                    echo '<span>' . htmlspecialchars($row['BADDRESS']) . '</span>';
                    echo '</a>';
                }
                echo '</div>';
            }

            oci_close($Connection);
        } else {
            $e = oci_error();
            echo "<p>Connection failed: " . htmlentities($e['message']) . "</p>";
        }

        // Helper function
        function display_table($stmt)
        {
            $numcols = oci_num_fields($stmt);
            $rowsExist = false;

            echo "<table>";
            echo "<tr>";
            for ($i = 1; $i <= $numcols; $i++) {
                echo "<th>" . oci_field_name($stmt, $i) . "</th>";
            }
            echo "</tr>";

            while ($row = oci_fetch_array($stmt, OCI_ASSOC + OCI_RETURN_NULLS)) {
                $rowsExist = true;
                echo "<tr>";
                foreach ($row as $item) {
                    echo "<td>" . ($item !== null ? htmlspecialchars($item) : "&nbsp;") . "</td>";
                }
                echo "</tr>";
            }

            if (!$rowsExist) {
                echo "<tr><td colspan='$numcols'>No data found.</td></tr>";
            }
            echo "</table>";
        }
        ?>
    </div>
    <footer>&copy; <?php echo date("Y"); ?> EASE Ltd. All rights reserved.</footer>
</body>

</html>