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
                        <h4>Hadoop核心架构</h4>
                        <br>
                    </article>
                    <div class="clear"></div>
                    <div>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hadoop 由许多元素构成。
                        其最底部是 Hadoop Distributed File System（HDFS），
                        它存储 Hadoop 集群中所有存储节点上的文件。HDFS（对于本文）的上一层是MapReduce 引擎，
                        该引擎由 JobTrackers 和 TaskTrackers 组成。通过对Hadoop分布式计算平台最核心的分布式文件系统HDFS、MapReduce处理过程
                        ，以及数据仓库工具Hive和分布式数据库Hbase的介绍，基本涵盖了Hadoop分布式平台的所有技术核心。<br>
                        <h6>HDFS</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; HDFS
                        对外部客户机而言，HDFS就像一个传统的分级文件系统。可以创建、删除、移动或重命名文件，等等。
                        但是 HDFS 的架构是基于一组特定的节点构建的（参见图 1），这是由它自身的特点决定的。这些节点包括 NameNode（仅一个），
                        它在 HDFS 内部提供元数据服务；DataNode，它为 HDFS 提供存储块。由于仅存在一个 NameNode，因此这是 HDFS 的一个缺点（单点失败）。
                        存储在 HDFS 中的文件被分成块，然后将这些块复制到多个计算机中（DataNode）。这与传统的 RAID 架构大不相同。块的大小（通常为 64MB）和复制的块数量在创建文件时由客户机决定。
                        NameNode 可以控制所有文件操作。HDFS 内部的所有通信都基于标准的 TCP/IP 协议。<br>
                        <h6>NameNode</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  NameNode 是一个通常在 HDFS 实例中的单独机器上运行的软件。
                        它负责管理文件系统名称空间和控制外部客户机的访问。NameNode 决定是否将文件映射到 DataNode 上的复制块上。
                        对于最常见的 3 个复制块，第一个复制块存储在同一机架的不同节点上，最后一个复制块存储在不同机架的某个节点上。注意，这里需要您了解集群架构。<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 实际的 I/O事务并没有经过 NameNode，只有表示 DataNode 和块的文件映射的元数据经过 NameNode。当外部客户机发送请求要求创建文件时，
                        NameNode 会以块标识和该块的第一个副本的 DataNode IP 地址作为响应。这个 NameNode 还会通知其他将要接收该块的副本的 DataNode。<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NameNode 在一个称为 FsImage 的文件中存储所有关于文件系统名称空间的信息。这个文件和一个包含所有事务的记录文件
                        （这里是 EditLog）将存储在 NameNode 的本地文件系统上。FsImage 和 EditLog 文件也需要复制副本，以防文件损坏或 NameNode 系统丢失。<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NameNode本身不可避免地具有SPOF（Single Point Of Failure）单点失效的风险，
                        主备模式并不能解决这个问题，通过Hadoop Non-stop namenode才能实现100% uptime可用时间。<br>
                        <h6>DataNode</h6>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataNode 也是一个通常在 HDFS实例中的单独机器上运行的软件。Hadoop 集群包含一个 NameNode
                        和大量 DataNode。DataNode 通常以机架的形式组织，机架通过一个交换机将所有系统连接起来。Hadoop 的一个假设是：
                        机架内部节点之间的传输速度快于机架间节点的传输速度。<br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DataNode 响应来自 HDFS 客户机的读写请求。它们还响应来自 NameNode 的创建、删除和复制块的命令。
                        NameNode 依赖来自每个 DataNode 的定期心跳（heartbeat）消息。每条消息都包含一个块报告，
                        NameNode 可以根据这个报告验证块映射和其他文件系统元数据。如果 DataNode 不能发送心跳消息，NameNode 将采取修复措施，重新复制在该节点上丢失的块。
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
</html>