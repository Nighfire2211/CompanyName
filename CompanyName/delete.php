<!DOCTYPE html><html><head><meta charset="utf-8"></head><body>
<?php
	$con = mysqli_connect("","root","");
	
	mysqli_select_db($con, "suppliers");
	
	$SupplierID = $_POST["SupplierID"];
	
	$sql = "SELECT * FROM suppliers WHERE SupplierID = $SupplierID";
	$res = mysqli_query($con, $sql);
	$num = mysqli_num_rows($res);
	
	if ($num > 0)
	{
		//Lösche Supplier mit $SupplierSupplierID

		$sql = "DELETE FROM suppliers WHERE SupplierID = $SupplierID";
					
		mysqli_query($con, $sql);
		
		// Alle Suppliers ausgeben
		$res = mysqli_query($con, "SELECT * FROM suppliers");
		
		
		$num = mysqli_num_rows($res);
			
		if($num > 0)
			echo "";
		else
			echo "keine Ergebnisse!<br>";
		
            echo "<table width='100%' border='1'>
            <tr>
            <th>SupplierID</th>
            <th>CompanyName</th>
            <th>ContactName</th>
            <th>ContactTitle</th>
            <th>Adress</th>
            <th>City</th>
            <th>Regi</th>
            </tr>";
                
            while ($dsatz = mysqli_fetch_assoc($res))
            {
                echo "<tr><td>" . $dsatz["SupplierID"] . "</td><td>"
                . $dsatz["CompanyName"] . "</td><td>"
                . $dsatz["ContactName"] . "</td><td>"
                . $dsatz["ContactTitle"] ."</td><td>"
                . $dsatz["Adress"] ."</td><td>"
                . $dsatz["City"] ."</td><td>"
                . $dsatz["Regi"] ."</td><tr>";
            }
            echo "</table>";
	}
		else
	{	
		//Keine entsprechende SupplierID
		echo "keinen Datensatz mit entsprechender 'SupplierID' gefunden! <br><br>";
		// Alle Kunden ausgeben
		$res = mysqli_query($con, "SELECT * FROM suppliers");
		
		
		$num = mysqli_num_rows($res);
			
		if($num > 0)
			echo "";
		else
			echo "keine Ergebnisse!<br>";
		
            echo "<table width='100%' border='1'>
            <tr>
            <th>SupplierID</th>
            <th>CompanyName</th>
            <th>ContactName</th>
            <th>ContactTitle</th>
            <th>Adress</th>
            <th>City</th>
            <th>Regi</th>
            </tr>";
		while ($dsatz = mysqli_fetch_assoc($res))
	{
		echo "<tr><td>" . $dsatz["SupplierID"] . "</td><td>"
		. $dsatz["CompanyName"] . "</td><td>"
		. $dsatz["ContactName"] . "</td><td>"
        . $dsatz["ContactTitle"] ."</td><td>"
        . $dsatz["Adress"] ."</td><td>"
        . $dsatz["City"] ."</td><td>"
		. $dsatz["Regi"] ."</td><tr>";
	}
	echo "</table>";
	}
	
	mysqli_close($con);
?>
</body></html>
