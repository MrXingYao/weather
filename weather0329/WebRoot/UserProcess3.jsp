<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" errorPage="error.jsp"%>
<%@ page import="bean.Province"%>
<%@ page import="dao.ProvinceDao"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <title>Weather Forecast</title>
    </head>
    <jsp:include page="UserHeader.jsp"></jsp:include>

    <!-- content -->

      <div id="content" class="content-extra"><div class="ic"></div>
        <div class="row-1">
            <div class="container">
                <div class="row">
                    <article class="span12">
                        <h4>Hive(数据仓库工具)</h4>
                        <br>
                    </article>
                    <div class="clear"></div>
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hive是建立在 Hadoop 上的数据仓库基础构架。它提供了一系列的工具，
                        可以用来进行数据提取转化加载（ETL），这是一种可以存储、查询和分析存储在 Hadoop 中的大规模数据的机制。Hive 定义了简单的类 SQL 查询语言，
                        称为 HQL，它允许熟悉 SQL 的用户查询数据。同时，这个语言也允许熟悉 MapReduce 开发者的开发自定义的 mapper 和 reducer 来处理内建的 mapper 和 reducer
                        无法完成的复杂的分析工作。
                        Hive 没有专门的数据格式。 Hive 可以很好的工作在 Thrift 之上，控制分隔符，也允许用户指定数据格式。<br><br>
                        <h5>Hive 体系结构：</h5><br>
                        <h6>1）用户接口：</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户接口主要有三个：CLI，Client 和 WUI。其中最常用的是 CLI，Cli 启动的时候，
                        会同时启动一个 Hive 副本。Client 是 Hive 的客户端，用户连接至
                        Hive Server。在启动 Client 模式的时候，需要指出 Hive Server 所在节点，并且在该节点启动 Hive Server。 WUI 是通过浏览器访问 Hive。<br>
                        <h6>2）元数据存储：</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hive 将元数据存储在数据库中，如 mysql、derby。Hive 中的元数据包括表的名字，
                        表的列和分区及其属性，表的属性（是否为外部表等），表的数据所在目录等。
                        当无法进行这种本地化数据处理时，再寻找其他可用节点并将数据从网络上传送给该节点（数据向代码迁移），但将尽可能从数据所在的本地机架上寻 找可用节点以减少通信延迟。<br>
                        <h6>3）解释器、编译器、优化器、执行器：</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;解释器、编译器、优化器完成 HQL 查询语句从词法分析、语法分析、编译、优化以及查询计划的生成。
                        生成的查询计划存储在 HDFS 中，并在随后由 MapReduce 调用执行。<br>
                        <h6>4）Hadoop：</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hive 的数据存储在 HDFS 中，大部分的查询由 MapReduce 完成（包含 * 的查询，
                        比如 select * from tbl 不会生成 MapReduce 任务）。<br>
                        <br><br><br>

                    </div>   <!--正文结束-->
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <article class="span6">
                    <h3>Shortly about us</h3>
                    <div class="wrapper">
                        <figure class="img-indent"><img src="img/mine/us.jpg " alt="" /></figure>
                        <div class="inner-1 overflow extra">
                            <div class="txt-1">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                我们是致力于通过大数据气象统计和数据分析，来给政府部门、社会组织和市民提供精准有效的气象预测和分析。
                                并提供精准的数据查询，方便广大学者和研究人员收集数据进行数据挖掘，同时提供最新的气象研究论文，开放讨论区，
                                支持广大气象爱好者进行科研交流。
                            </div>
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
        <div class="privacy pull-left">&copy; 2017 | <a href="http://www.google.com">Title : Online Weather Forecast</a> | <a href="http://twitter.github.com/bootstrap/" target="_blank">Bootstrap</a> | Demo Illustrations by <a href="http://www.sdufe.edu.cn" target="_blank">Liuzhen Xingyao</a></div>
    </div>
</footer>
<script type="text/javascript" src="js/bootstrap.js"></script>
</body>
</html>/html>