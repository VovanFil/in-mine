<?


if($_POST['username'] == ''){
	echo'<center><p>Введите никнейм</p></center>';
	exit;
}
	if($_POST['group'] == ''){
	echo'<center><p>Выберите группу</p></center>';
	exit;
}

include('functions.php');
$name = filter($_POST['username']);
$group = filter($_POST['group']);
$server = filter($_POST['server']);

				
$list = mysqli_query($mysql,"SELECT * FROM goods WHERE pex ='$group' ") or die("ERROR1");
$lst = mysqli_fetch_array($list);
if($_POST['type'] == 'check'){


	echo'
	<span>Выбранная группа: '.$lst['group'].'</span><br>
	<span>Цена выбранной группы: '.$lst['price'].'руб.</span><br>	<br>
	';

}else{
	if($rlst['priority'] >= $lst['priority']){
	$price = $lst['price'];
}else{	
	
	$price = $lst['price']-$rlst['price'];
}
	
mysqli_query($mysql,"INSERT INTO `payments`(`username`, `userGroup`, `purchGroup`, `dateCreate`, `sum`, `server`, `type`) VALUES ('$name','$realpex','$group', '$date', '$price','$server','group')");	


$id = mysqli_insert_id($mysql);


pay($id,$price,$group,$name, 0);	
	
	
}


?> 