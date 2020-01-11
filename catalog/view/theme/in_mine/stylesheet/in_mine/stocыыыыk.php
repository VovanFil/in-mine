<?
header('Content-Type: text/html; charset=utf-8');
set_time_limit (500);
error_reporting(E_ALL);
ini_set('display_errors', 1);
$config = array(
	'db' => 'localhost', // IP БД
	'dbname' => 'lightingby1', // Имя БД
	'dbpass' => 'V9rd1UeDjYtJ', // Пароль БД
	'dbuser' =>  'lightingby', // Пользователь БД
);

// Подключение бд
	$mysql = mysqli_connect($config['db'], $config['dbuser'], $config['dbpass'], $config['dbname']) or die('error');
	mysqli_query($mysql, 'SET NAMES utf8 COLLATE utf8_general_ci');

	
				
		date("Y-m-d H:i:s"); 	
					
					
	copy('http://www.dekomo.ru/Cont/ost2xml.php?token=0013a46ea82561bba6c37ca05a2fe700&fav=1', 'stock.xml');
// Файл с данными
	$xml = simplexml_load_file('stock.xml');
	//
// Обработка курса	


	$skus = NULL;
	
	$status = NULL;
	$prid = 0;
	$count = count($xml->shop->offers->offer);
	//print_r( count($xml->shop->offers->offer));exit;
	$sql = 'UPDATE  oc_product SET quantity = case ';
	for ($prid = 0 ; $prid < $count; $prid++) {
		$offer = $xml->shop->offers->offer[$prid];
		
		 foreach($offer->param as $param){
			if((string)$param->attributes()->name == "Время последнего обновления"){
					$update = $param;
			}
		}		
			$update = strtotime($update);
		
		//if($update > time()-90000){
				
		
		$stock = $offer->remote;
		$status_id = 8;
		if($stock == 0){
			$status_id = 11;
		}
		
		$sql .= "when sku = '".$offer->article."' then $stock ";  
		$status .= "when sku = '".$offer->article."' then $status_id ";  
		//mysqli_query($mysql,"UPDATE oc_product SET price='$price', tax_class_id='11' WHERE sku='".$offer->article."'");
		if($prid == 0){
			$skus .= "'".$offer->article."'";
		}else{
			$skus .= ",'".$offer->article."'";
		}
		
		
		//}
	}
	
	

	$sql .='end WHERE sku in ('.$skus.')';
	//mysqli_query($mysql,$sql) or die(mysqli_error($mysql));
	//print_r($sql);
	unlink("stock.txt");
	$file = fopen("stock.txt", 'a+');
	fwrite($file, $sql);
	fclose($file); 
 
	$sql2 = 'UPDATE  oc_product SET stock_status_id = case ';
	$sql2 .= $status;
	$sql2 .='end WHERE sku in ('.$skus.')';
 unlink("status.txt");
	$file = fopen("status.txt", 'a+');
	fwrite($file, $sql2);
	fclose($file); 
 
 
print_r('ok');


//Установка статических параметров	

	
// Добавление в продукты

