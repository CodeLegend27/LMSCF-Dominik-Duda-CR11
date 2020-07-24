<?php
if (!isset($_SESSION['user'])) {
    loadcontent('login.php');
    
}else{
    loadcontent('general.php');
    }



// Was thinking how i could use ajax to dinamically load content. figured out just a function which injects a script :)
    function loadcontent($url){
        echo '<script>
        
        $( document ).ready(function() {
            $("#content_div").load("'.$url.'");
        });

        </script>
        
        
        
        ';
    
    }

?>
