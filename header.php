<?php
require_once 'db.php';

echo '
<div id="tabs">
	<div><a href="/">Главная</a></div>
	<div><a href="/client.html">Информация о клиенте</a></div>
	<div><a href="/employee.html">Информация о сотруднике</a></div>
	<div><a href="/provider.html">Информация о поставщике</a></div>
	<div><a href="/detail.html">Детали</a></div>
	<div><a href="/payment_order.html">Платежные поручения</a></div>
	<div><a href="/order_product.html">Заказ</a></div>
	<div><a href="/couple_goods.html">Счет</a></div>
	<div><a href="/invoice.html">Накладная</a></div>
</div>';


$sql = "SELECT `key_employee`, `full_name` FROM `employee` WHERE DAY(`birthday`) = DAY(CURDATE()) AND MONTH(`birthday`) = MONTH(CURDATE())";
$nr = mysql_query($sql);
$employee_count = mysql_num_rows($nr);

if($employee_count > 0)
{
	echo '
<div style="clear:both;">
	<div style="clear:none; float:left; padding:10px; background-color:#ffff00;">Сегодня день рождение у: ';
	
	for($i = 0; $i < $employee_count; ++$i)
	{
		list($key_employee, $full_name) = mysql_fetch_row($nr);
		echo '<a href="/edit_employee.html?key_employee='.$key_employee.'">'.$full_name.'</a>';
		if($i < ($employee_count-1)) echo ',&nbsp;';
	}
	
	echo '</div>
</div>';
}
?>
