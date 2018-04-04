<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	errorPage="error.jsp"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

   <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
<!--start of  content -->

<jsp:include page="/UserHeader.jsp"></jsp:include>

<!--end of  content -->


<div id="content" class="content-extra">
	<div class="ic"></div>
	<div class="row-1">
		<div class="container">
			<div class="row">
				<article class="span12">
					<h4>产品简介Product Introduction</h4>
					<br>
				</article>
				<div class="clear"></div>
				<h6>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					地面气候统计产品包括1951年以来的中国范围县市级气象站（2400站）和全球范围重点城市8000气象站的本站气压、
					气温、相对湿度、降水量、风向风速、地温、水汽压、日照时数、天气现象等数据。
					其中天气现象为日值数据，包括扬沙、浮尘、露、霜、结冰、霾、雾、大风、雷暴等天气现象及出现时间。<br> <br>
					<h5>数据描述Data Description</h5>
					<h6>1）频次：中国日值、旬值、候值、月值、年值；全球日值、月值</h6>
					<h6>2）空间范围：中国、全球范围</h6>
					<h6>3）更新时次：1951年1月1日至今</h6>
					<h6>4）数据格式：TXT</h6>
					<br> <br>

					<h5>Step1.选择要素 Element Selection</h5>
					<form action="DataShopping" method="post">
						气温 <input type="checkbox" name="elements" value="avgTemperature">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 气压 <input type="checkbox"
							name="elements" value="avgPressure">&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 降水量<input type="checkbox" name="elements"
							value="avgPrecipitation"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;湿度<input type="checkbox" name="elements"
							value="avgHumidity">&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;风速<input type="checkbox" name="elements"
							value="avgWindSpeed">
						<h5>Step2.选择地区 Area Selection</h5>

						北京 <input type="checkbox" name="area" value="beijing">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;天津 <input type="checkbox"
							name="area" value="tianjin"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;河北 <input type="checkbox" name="area"
							value="hebei"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;山西 <input
							type="checkbox" name="area" value="shanxi">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 内蒙古<input type="checkbox"
							name="area" value="neimenggu"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 辽宁<input type="checkbox" name="area"
							value="liaoning"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
						吉林<input type="checkbox" name="area" value="jilin">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 黑龙江<input type="checkbox"
							name="area" value="heilongjiang"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 上海<input type="checkbox" name="area"
							value="shanghai"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
						江苏<input type="checkbox" name="area" value="jiangsu">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 浙江<input type="checkbox"
							name="area" value="zhejiang"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 安徽<input type="checkbox" name="area"
							value="anhui"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 福建<input
							type="checkbox" name="area" value="fujian">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 江西<input type="checkbox"
							name="area" value="jiangxi"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 山东<input type="checkbox" name="area"
							value="shandong"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
						河南<input type="checkbox" name="area" value="henan">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 湖北<input type="checkbox"
							name="area" value="hubei"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 湖南<input type="checkbox" name="area"
							value="hunan"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 广东<input
							type="checkbox" name="area" value="guangdong">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 广西<input type="checkbox"
							name="area" value="guangxi"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 海南<input type="checkbox" name="area"
							value="hainan"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 重庆<input
							type="checkbox" name="area" value="chongqing">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 四川<input type="checkbox"
							name="area" value="sichuan"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 贵州<input type="checkbox" name="area"
							value="guizhou"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 云南<input
							type="checkbox" name="area" value="yunnan">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 西藏<input type="checkbox"
							name="area" value="xizang"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 陕西<input type="checkbox" name="area"
							value="shanxixi"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
						甘肃<input type="checkbox" name="area" value="gansu">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 青海<input type="checkbox"
							name="area" value="qinghai"> &nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp; 宁夏<input type="checkbox" name="area"
							value="ningxia"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 新疆<input
							type="checkbox" name="area" value="xinjiang">
						&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;

						<h5>Step3.选择频次 Frenquency Selection</h5>
						逐月 <input type="checkbox" name="frenquency" value="eachMonth">
						逐年 <input type="checkbox" name="frenquency" value="eachYear">
						<h5>Step4.选择时间 Time Selection</h5>
							<input type="submit" value="选择时间">

						<p>
							日期：<input type="text" id="datepicker">
						</p>

						<h5>Step5.请填写您的个人信息，我们将进一步与您沟通</h5>
						姓名*： <input type="text" name="name"> <br> 单位*： <input
							type="text" name="company"> <br> 联系电话*： <input
							type="text" name="phone"> <br> 邮箱*： <input
							type="text" name="email"> <br>其他需求： <input
							type="text" style="width:280px;height:150px;" name="other">
						<br> <input type="submit" style="width:280px;" value="提交">
					</form>
			</div>
			<!--正文结束-->
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<article class="span6">
			<h3>Shortly about us</h3>
			<div class="wrapper">
				<figure class="img-indent">
					<img src="img/mine/us.jpg " alt="" />
				</figure>
				<div class="inner-1 overflow extra">
					<div class="txt-1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						我们是致力于通过大数据气象统计和数据分析，来给政府部门、社会组织和市民提供精准有效的气象预测和分析。
						并提供精准的数据查询，方便广大学者和研究人员收集数据进行数据挖掘，同时提供最新的气象研究论文，开放讨论区，
						支持广大气象爱好者进行科研交流。</div>
				</div>
		</article>
		<article class="span6">
			<h3>Some quick links</h3>
			<div class="wrapper">
				<ul class="list list-pad">
					<li><a href="#">Campaigns</a></li>
					<li><a href="#">Portraits</a></li>
					<li><a href="#">Fashion</a></li>
					<li><a href="#">Fine Art</a></li>
				</ul>
				<ul class="list list-pad">
					<li><a href="#">Campaigns</a></li>
					<li><a href="#">Portraits</a></li>
					<li><a href="#">Fashion</a></li>
					<li><a href="#">Fine Art</a></li>
				</ul>
				<ul class="list list-pad">
					<li><a href="#">Campaigns</a></li>
					<li><a href="#">Portraits</a></li>
					<li><a href="#">Fashion</a></li>
					<li><a href="#">Fine Art</a></li>
				</ul>
				<ul class="list">
					<li><a href="#">Advertising</a></li>
					<li><a href="#">Lifestyle</a></li>
					<li><a href="#">Love story</a></li>
					<li><a href="#">Landscapes</a></li>
				</ul>
			</div>
		</article>
	</div>
</div>
</div>
</div>

<!-- footer -->
<footer>
	<div class="container clearfix">
		<ul class="list-social pull-right">
			<li><a class="icon-1" href="#"></a></li>
			<li><a class="icon-2" href="#"></a></li>
			<li><a class="icon-3" href="#"></a></li>
			<li><a class="icon-4" href="#"></a></li>
		</ul>
		<div class="privacy pull-left">
			&copy; 2017 | <a href="http://www.google.com">Title : Online
				Weather Forecast</a> | <a href="http://twitter.github.com/bootstrap/"
				target="_blank">Bootstrap</a> | Demo Illustrations by <a
				href="http://www.sdufe.edu.cn" target="_blank">Liuzhen Xingyao</a>
		</div>
	</div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>