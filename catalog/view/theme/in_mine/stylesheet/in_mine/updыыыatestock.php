
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

	
				
					
$file = file_get_contents('stock.txt', true);
mysqli_query($mysql,$file) or die(mysqli_error($mysql));

$file2 = file_get_contents('status.txt', true);
mysqli_query($mysql,$file2) or die(mysqli_error($mysql));
print_r('ok');



?>