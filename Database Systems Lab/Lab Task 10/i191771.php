<html>
    <head>
        <title>TASK 3 </title>
    </head>
        <table border=1 style="width: 100%;">
            <tr>
                <td>Hello vistor!!</td> <br>
            </tr>
            <tr align= "center">
                <td ><b>Please provide us the requested information<b></b></td>
            </tr>
            <tr >
               <td> Name:<?php echo $_POST["name"]; ?> <br></td>
            </tr>
            <tr>
            <td>Gender:<?php echo $_POST["gender"]; ?> 
            </tr>
            <tr>
                <?php echo $_POST["education"]?>

            </tr>


        
        </table>

    
</html>