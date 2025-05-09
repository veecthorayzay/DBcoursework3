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
        <a href="search.php">Search</a>
    </nav>
    <div class="content">
        <?php
        if ($Connection = oci_connect("y1o35", "rbJ8enfh")) {
            //echo "<p>Connection OK</p>";
        
            //selected branch handling
            if (isset($_GET['BranchID'])) {
                $BranchID = $_GET['BranchID'];

                echo "<h2>Details for Branch ID: $BranchID</h2>";

                //employee display
                echo "<h3>Employees</h3>";
                $sql = "SELECT 
                Employee.EmployeeID,
                Employee.EFName AS FirstName,
                Employee.ELName AS LastName,
                Employee.EPosition AS Position,
                Employee.EEmail AS Email,
                Branch.BName AS BranchName
                FROM Employee
                JOIN Branch ON Employee.BranchID = Branch.BranchID
                WHERE Employee.BranchID = :branchid
                ORDER BY Employee.EFName, Employee.ELName";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                //rooms display
                echo "<h3>Rooms</h3>";
                $sql = "SELECT 
                Room.RoomID,
                Room.RoomNumber,
                Room.RSize,
                Room.RType,
                CASE 
                    WHEN Room.RType = 'Standard' THEN 
                        CASE 
                            WHEN (SELECT StandardRoom.HasDecor FROM StandardRoom WHERE StandardRoom.RoomID = Room.RoomID) = 'Y' 
                            THEN 'Has Decor'
                            ELSE 'Does not have Decor'
                        END
                    WHEN Room.RType = 'Executive' THEN 
                        CASE 
                            WHEN (SELECT ExecutiveRoom.BuffetOrdered FROM ExecutiveRoom WHERE ExecutiveRoom.RoomID = Room.RoomID) = 'Y' 
                            THEN 'Buffet Ordered'
                            ELSE 'No Buffet Ordered'
                        END
                    ELSE 'N/A'
                END AS RoomFeature
                FROM Room
                WHERE Room.BranchID = :branchid
                ORDER BY Room.RoomNumber";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                //booking display
                echo "<h3>Bookings</h3>";
                $sql = "SELECT 
                Booking.BookingID,
                Customer.CustFName || ' ' || Customer.CustLName AS CustomerName,
                Customer.CustType AS CustomerType,
                Room.RoomNumber,
                TO_CHAR(Booking.StartDate, 'DD-Mon-YYYY') AS StartDate,
                TO_CHAR(Booking.EndDate, 'DD-Mon-YYYY') AS EndDate,
                ROUND(Booking.EndDate - Booking.StartDate) AS DurationDays,
                CASE 
                    WHEN Booking.InvoiceRequired = 'Y' THEN 'Yes'
                    ELSE 'No'
                END AS InvoiceRequired
                FROM Booking
                JOIN Customer ON Booking.CustomerID = Customer.CustomerID
                JOIN Room ON Booking.RoomID = Room.RoomID
                WHERE Booking.BranchID = :branchid
                ORDER BY Booking.StartDate DESC";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                //Supplies
                echo "<h3>Supplies</h3>";
                $sql = "SELECT 
                Supplies.SupplyDetails,
                TO_CHAR(Supplies.SupplyDate, 'DD-Mon-YYYY') AS SupplyDate,
                Supplier.SName AS SupplierName,
                Supplier.SContact AS Contact
                FROM Supplies
                JOIN Supplier ON Supplies.SupplierID = Supplier.SupplierID
                WHERE Supplies.BranchID = :branchid
                ORDER BY Supplies.SupplyDate DESC";
                $stmt = oci_parse($Connection, $sql);
                oci_bind_by_name($stmt, ':branchid', $BranchID);
                oci_execute($stmt);
                display_table($stmt);

                echo '<p><a href="search.php">Back to Branch List</a></p>';
            } else {
                //list out the branches
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
    <footer>&copy; <?php echo date("Y"); ?> EASE Ltd</footer>
</body>

</html>