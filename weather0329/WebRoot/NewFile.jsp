<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="js/jquery.min.js"></script>

<!-- <link href="js/bootstrap-3.3.5-dist/css/bootstrap.css" rel="stylesheet" />
<script src="js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script> -->
<!-- <link href="js/bootstrap.css" rel="stylesheet" /> -->

<!-- <link href="js/bootstrap.min.css" rel="stylesheet" /> 
<script src="js/bootstrap.min.js"></script>
<link href="js/bootstrap-datetimepicker.min.css" rel="stylesheet" />
<script src="js/moment-with-locales.min.js"></script>
<script src="js/bootstrap-datetimepicker.min.js"></script> -->


<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script
	src="https://cdn.bootcss.com/moment.js/2.18.1/moment-with-locales.min.js"></script>
<link
	href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<script
	src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<script language="javascript">
	$(function() {
		var picker1 = $('#datetimepicker1').datetimepicker({
			format : 'YYYY-MM-DD',
			locale : moment.locale('zh-cn'),
		//minDate: '2016-7-1'  
		});
		var picker2 = $('#datetimepicker2').datetimepicker({
			format : 'YYYY-MM-DD',
			locale : moment.locale('zh-cn')
		});
		//动态设置最小值  
		picker1.on('dp.change', function(e) {
			picker2.data('DateTimePicker').minDate(e.date);
		});
		//动态设置最大值  
		picker2.on('dp.change', function(e) {
			picker1.data('DateTimePicker').maxDate(e.date);
		});
	});
</script>

<title>Insert title here</title>
</head>
<body>
	<form action="" method="post">
		<div class="row">
			<div class='col-sm-6'>
				<div class="form-group">
					<label>选择开始时间：</label>
					<!--指定 date标记-->
					<div class='input-group date' id='datetimepicker1'>
						<input type='text' class="form-control" /> <span
							class="input-group-addon"> <span
							class="glyphicon glyphicon-calendar"></span> </span>
					</div>
				</div>
			</div>
			<div class='col-sm-6'>
				<div class="form-group">
					<label>选择结束时间：</label>
					<!--指定 date标记-->
					<div class='input-group date' id='datetimepicker2'>
						<input type='text' class="form-control" /> <span
							class="input-group-addon"> <span
							class="glyphicon glyphicon-calendar"></span> </span>
					</div>
				</div>
			</div>
		</div>
		<input type="submit" value="提交">
	</form>
</body>
</html>