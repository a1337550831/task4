<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-12
  Time: 16:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page  pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<main>

    <p class="container kuaiji">
        <span class="first">首页</span>
        <span class="sanjiao"></span>
        <span class="phoers">职业</span>
    </p>

    <div class="container " style="    height: 50px;
        border-bottom: 1px solid #D0D6D9;">
        <span class="fan">方向：</span>
        <span class="fang">全部</span>
        <span class="fang">前端开发</span>
        <span class="fang">后端开发</span>
        <span class="fang">移动开发</span>
        <span class="fang">整站开发</span>
        <span class="fang"><a href="#wei" style="    color: #212529;">运营维护</a></span>

    </div>

    <p class="container kuaiji ">前端开发方向 </p>
    <!-- 前端表格+动画 -->
    <div class="container">
        <div class="row">

<c:forEach items="${list}" var="a">
            <div class="lolo  col-md-4 col-sm-6 col-12">

                <!-- 第一个表格 -->
                <!-- 注意 class="table"必须加上 否则不会实现响应式  bootstrap -->
                <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px;margin-bottom: 0;">
                    <tr>
                        <th colspan="2">
                            <span class="bgi-4"></span>
                            <div class="gongcs" style="height: 90px;">
                                <span class="webgcs">${a.name}</span>
                                <span class="webgc">${a.introduction}</span>

                            </div>

                        </th>
                    </tr>
                    <tr style="height: 30px;">
                        <td>
                            <span class="menk">门槛</span>
                            <c:forEach  begin="1" end="${a.threshold}" step="1">
                            <span class="bgi-5"></span>
                            </c:forEach>
                        </td>
                        <td>
                            <span class="menk">难易程度</span>
                           <c:forEach begin="1" end="${a.difficulty}" step="1">
                                <span class="bgi-5"></span>
                            </c:forEach>
                        </td>
                    </tr>
                    <tr style="height: 30px;">
                        <td>
                            <span class="menk">成长周期 <strong style="color: red;">${a.pillulate}</strong>年 </span>

                        </td>
                        <td>
                            <span class="menk">稀缺程度 <strong style="color: red;">${a.demandnumber}</strong> 家公司需要</span>

                        </td>
                    </tr>



                </table>
                <!-- 第二个表格 -->
                <!-- 这里并没有使用嵌套 而是在上一个表格之外又另外建了一个表格 然后对他们共同的父级设置flex 让他们是竖排列 -->
                <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px; border-top: 0;">
                    <tr>
                        <!-- 不可以直接在td th下直接写文字因为在td th等标签内不可以直接加选择器 去修饰（不起作用）
                                        ，所以一般要在该标签下再写一个标签<span>给它加选择器来修饰文字  （当然如果不需要修饰文字 可以不加标签）  -->
                        <!-- <td rowspan="3" class="menk" style=" text-align: center;">薪资待遇 </td> -->
                        <td rowspan="3">
                            <!-- 要让文字水平居中 必须要先将span转为可以设置宽度与高度的 块级元素 这里不可以转为行内块（为什么呢？）
                                        只有可以设置宽度 设置margin auto才会居中 -->
                            <span class="menk" style=" margin: 0 auto;width: 35px;display: block; line-height: 90px;">薪资待遇</span>
                        </td>


                        <td>
                            <div class="nian">
                                <span class="menk"> 0-1年 </span>
                                <span class="menk">${a.salary0}k-${a.salay1}k/月</span>
                            </div>

                        </td>

                    </tr>
                    <tr>
                        <td>
                            <div class="nian">
                                <span class="menk"> 1-2年 </span>
                                <span class="menk">${a.salay1}k-${a.salay2}k/月</span>
                            </div>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <div class="nian">
                                <span class="menk"> 2-3年 </span>
                                <span class="menk">${a.salay2}k-${a.salay3}k/月</span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">

                                <span class="menk">
                                    有<strong style="color: red;">${a.stunumber}</strong>人正在学
                                </span>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <span class="menk">提示:${a.tips}</span>
                        </td>
                    </tr>
                </table>
                <!-- 动画hover效果 -->
                <div class="fop ">
                    <div class="iosgcs">
                        <span class="ment"> ${a.name} </span>
                        <span class="meny">
                                ${a.article}
                            </span>
                    </div>
                </div>
            </div>
            </c:forEach>

        </div>
    </div>

    <p class="container kuaiji ">后端开发方向 </p>
    <!-- 后端表格+动画 -->
    <div class="container">
        <div class="row">
            <c:forEach items="${list1}" var="b">
                <div class="lolo  col-md-4 col-sm-6 col-12">

                    <!-- 第一个表格 -->
                    <!-- 注意 class="table"必须加上 否则不会实现响应式  bootstrap -->
                    <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px;margin-bottom: 0;">
                        <tr>
                            <th colspan="2">
                                <span class="bgi-4"></span>
                                <div class="gongcs" style="height: 90px;">
                                    <span class="webgcs">${b.name}</span>
                                    <span class="webgc">${b.introduction}</span>

                                </div>

                            </th>
                        </tr>
                        <tr style="height: 30px;">
                            <td>
                                <span class="menk">门槛</span>
                                <c:forEach  begin="1" end="${b.threshold}" step="1">
                                    <span class="bgi-5"></span>
                                </c:forEach>
                            </td>
                            <td>
                                <span class="menk">难易程度</span>
                                <c:forEach  begin="1" end="${b.difficulty}" step="1">
                                    <span class="bgi-5"></span>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr style="height: 30px;">
                            <td>
                                <span class="menk">成长周期 <strong style="color: red;">${b.pillulate}</strong>年 </span>

                            </td>
                            <td>
                                <span class="menk">稀缺程度 <strong style="color: red;">${b.demandnumber}</strong> 家公司需要</span>

                            </td>
                        </tr>



                    </table>
                    <!-- 第二个表格 -->
                    <!-- 这里并没有使用嵌套 而是在上一个表格之外又另外建了一个表格 然后对他们共同的父级设置flex 让他们是竖排列 -->
                    <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px; border-top: 0;">
                        <tr>
                            <!-- 不可以直接在td th下直接写文字因为在td th等标签内不可以直接加选择器 去修饰（不起作用）
                                            ，所以一般要在该标签下再写一个标签<span>给它加选择器来修饰文字  （当然如果不需要修饰文字 可以不加标签）  -->
                            <!-- <td rowspan="3" class="menk" style=" text-align: center;">薪资待遇 </td> -->
                            <td rowspan="3">
                                <!-- 要让文字水平居中 必须要先将span转为可以设置宽度与高度的 块级元素 这里不可以转为行内块（为什么呢？）
                                            只有可以设置宽度 设置margin auto才会居中 -->
                                <span class="menk" style=" margin: 0 auto;width: 35px;display: block; line-height: 90px;">薪资待遇</span>
                            </td>


                            <td>
                                <div class="nian">
                                    <span class="menk"> 0-1年 </span>
                                    <span class="menk">${b.salary0}k-${b.salay1}k/月</span>
                                </div>

                            </td>

                        </tr>
                        <tr>
                            <td>
                                <div class="nian">
                                    <span class="menk"> 1-2年 </span>
                                    <span class="menk">${b.salay1}k-${b.salay2}k/月</span>
                                </div>
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <div class="nian">
                                    <span class="menk"> 2-3年 </span>
                                    <span class="menk">${b.salay2}k-${b.salay3}k/月</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">

                                <span class="menk">
                                    有<strong style="color: red;">${b.stunumber}</strong>人正在学
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <span class="menk">提示:${b.tips}</span>
                            </td>
                        </tr>
                    </table>
                    <!-- 动画hover效果 -->
                    <div class="fop ">
                        <div class="iosgcs">
                            <span class="ment"> ${b.name} </span>
                            <span class="meny">
                                    ${b.article}
                            </span>
                        </div>
                    </div>
                </div>
            </c:forEach>

        </div>
    </div>

    <p class="container kuaiji " id="wei">运维方向 </p>
    <div class="container">
        <div class="row">
            <c:forEach items="${list2}" var="c">
                <div class="lolo  col-md-4 col-sm-6 col-12">

                    <!-- 第一个表格 -->
                    <!-- 注意 class="table"必须加上 否则不会实现响应式  bootstrap -->
                    <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px;margin-bottom: 0;">
                        <tr>
                            <th colspan="2">
                                <span class="bgi-4"></span>
                                <div class="gongcs" style="height: 90px;">
                                    <span class="webgcs">${c.name}</span>
                                    <span class="webgc">${c.introduction}</span>

                                </div>

                            </th>
                        </tr>
                        <tr style="height: 30px;">
                            <td>
                                <span class="menk">门槛</span>
                                <c:forEach  begin="1" end="${c.threshold}" step="1">
                                    <span class="bgi-5"></span>
                                </c:forEach>
                            </td>
                            <td>
                                <span class="menk">难易程度</span>
                                <c:forEach  begin="1" end="${c.difficulty}" step="1">
                                    <span class="bgi-5"></span>
                                </c:forEach>
                            </td>
                        </tr>
                        <tr style="height: 30px;">
                            <td>
                                <span class="menk">成长周期 <strong style="color: red;">${c.pillulate}</strong>年 </span>

                            </td>
                            <td>
                                <span class="menk">稀缺程度 <strong style="color: red;">${c.demandnumber}</strong> 家公司需要</span>

                            </td>
                        </tr>



                    </table>
                    <!-- 第二个表格 -->
                    <!-- 这里并没有使用嵌套 而是在上一个表格之外又另外建了一个表格 然后对他们共同的父级设置flex 让他们是竖排列 -->
                    <table class="table" border="1" cellspacing="0" cellpadding="0" style="height: 150px; border-top: 0;">
                        <tr>
                            <!-- 不可以直接在td th下直接写文字因为在td th等标签内不可以直接加选择器 去修饰（不起作用）
                                            ，所以一般要在该标签下再写一个标签<span>给它加选择器来修饰文字  （当然如果不需要修饰文字 可以不加标签）  -->
                            <!-- <td rowspan="3" class="menk" style=" text-align: center;">薪资待遇 </td> -->
                            <td rowspan="3">
                                <!-- 要让文字水平居中 必须要先将span转为可以设置宽度与高度的 块级元素 这里不可以转为行内块（为什么呢？）
                                            只有可以设置宽度 设置margin auto才会居中 -->
                                <span class="menk" style=" margin: 0 auto;width: 35px;display: block; line-height: 90px;">薪资待遇</span>
                            </td>


                            <td>
                                <div class="nian">
                                    <span class="menk"> 0-1年 </span>
                                    <span class="menk">${c.salary0}k-${c.salay1}k/月</span>
                                </div>

                            </td>

                        </tr>
                        <tr>
                            <td>
                                <div class="nian">
                                    <span class="menk"> 1-2年 </span>
                                    <span class="menk">${c.salay1}k-${c.salay2}k/月</span>
                                </div>
                            </td>
                        </tr>
                        <tr>

                            <td>
                                <div class="nian">
                                    <span class="menk"> 2-3年 </span>
                                    <span class="menk">${c.salay2}k-${c.salay3}k/月</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">

                                <span class="menk">
                                    有<strong style="color: red;">${c.stunumber}</strong>人正在学
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <span class="menk">提示:${c.tips}</span>
                            </td>
                        </tr>
                    </table>
                    <!-- 动画hover效果 -->
                    <div class="fop ">
                        <div class="iosgcs">
                            <span class="ment"> ${c.name} </span>
                            <span class="meny">
                                    ${c.article}
                            </span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <div class="row">




        </div>
    </div>

</main>