<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-12
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 最上方的一行 -->

<p class="roa">

    <span class="phoer">客服热线：123456789</span>

    <!-- 最上方右上角 三个图标 -->
    <span class="one">
                <span class="bgi-1"></span>
                <span class="bgi-2"></span>
                <span class="bgi-3"></span>
            </span>
</p>
<!-- 第二行右边 -->
<!-- navbar 类来创建一个标准的导航栏
.navbar-expand-xl|lg|md|sm 类来创建响应式的导航栏 (大屏幕水平铺开，小屏幕垂直堆叠)。
导航栏上的选项可以使用 <ul> 元素并添加 class="navbar-nav" 类。 然后在 <li> 元素上添加 .nav-item 类， <a> 元素上使用 .nav-link 类:
-->

<!-- 为什么导航栏在窗口缩小时变成了按钮后 可以拉开  因为nav并没有给定高度  -->
<nav class="navbar navbar-expand-md bg-success navbar-dark" style="padding: 0;">
    <!-- Brand -->
    <a class="navbar-brand nav-left" href="#">
        <span>技能树</span>
        <span class="wangzi">www.jnshu.com</span>
    </a>

    <!-- Toggler/collapsibe Button -->
    <button class="navbar-toggler butt" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>

    <!-- Navbar links -->
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav shouye">
            <li class="nav-item" style="outline: none; height: 60px;">
                <a class="nav-link" style="  color: white;" href="/">首页</a>
            </li>
            <li class="nav-item" style="outline: none; height: 60px;">
                <a class="nav-link" style="  color: white;" href="/job">职业</a>
            </li>
            <li class="nav-item" style="outline: none; height: 60px;">
                <a class="nav-link" style="  color: white;" href="/company">推荐</a>
            </li>
            <li class="nav-item" style="outline: none; height: 60px;">
                <a class="nav-link " style="  color: white;" href="#">关于</a>
            </li>

        </ul>
    </div>
</nav>