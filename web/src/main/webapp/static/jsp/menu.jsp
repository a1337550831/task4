<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-13
  Time: 19:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 图像 -->
<img src="/static/img/wdd.png" class="bgi-m">
<!-- 内容第一行 -->
<p class="container kuaiji">
    <span class="first">首页</span>
    <span class="sanjiao"></span>
    <span class="phoers">职业</span>
</p>

<!-- 主要内容 -->
<div class="container">
    <div class="row">
        <!-- 左边 -->
        <div class="col-md-3 main-left" style="background-color: white;">

            <h4 class="company">合作企业</h4>

            <ul class="li" style="display: flex;
                        flex-direction: column;
                        align-items: center;
                        list-style-type: circle;
                        color: red;">
                <c:forEach items="${enterprises}" var="a">
                <li><a class="enterprise" href="/company?id=${a.id}">${a.name}</a></li>
                </c:forEach>

            </ul>
        </div>
