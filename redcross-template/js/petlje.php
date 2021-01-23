<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
<?php

//petlje for

for ($i = 0, $i<10, $i=$i+1){
echo '?Osijek <hr />';

}

//ekvivaletni 
//$i = $i+1

//način interakcije indekxksnog niza
for ($i = 0, $i<10, $i=$i+1){
    echo $i. '?Osijek <hr />';
    


$in = [2,5,6,7,8,9,10,11,12]
for ($i=0;$i<10;$i++){
    echo$in[$i]. '<hr />';

}


//danas se koristi ova inačica for petlje

foreach($i as $v){
    echo $v . '<hr />';
}

//asocijativni nizovi

$an=['ključ' => 'vrijednost'. 'ime'=> 'Edunova';

foreach($an as $k =>$v){
    echo $v . '<hr/>';
}


k



?>



</body>
</html>