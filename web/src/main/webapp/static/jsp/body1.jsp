<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-04-12
  Time: 15:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 第三行 制作轮播图片 -->
<!-- 该data-ride="carousel"属性用于将轮播标记为从页面加载开始的动画  .carousel创建一个轮播 -->
<div id="demo" class="carousel slide" data-ride="carousel">

    <!-- 圆点指示符 -->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
    </ul>

    <!-- 轮播图片 -->
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/static/css-task8/qqqqqqq.png" style="width:100%">
        </div>
        <div class="carousel-item">
            <img src="/static/css-task8/lunbooo.png" style="width:100%">
        </div>
        <div class="carousel-item">
            <img src="/static/css-task8/bobobo.png" style="width:100%">
        </div>
    </div>

    <!-- 左右切换按钮 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
        <span class="carousel-control-next-icon"></span>
    </a>

</div>
</header>
<main>
    <!-- 内容第一块 -->
    <div class="container">
        <div class="row min">
            <div class="col-12  col-sm-6 col-md-3 gaoxiao">
                <span class="bgi-4"></span>
                <span>高效</span>
                <span class="fonts">将五到七年的成长时间，缩短 到一年到三年。</span>
            </div>

            <div class="col-12 col-sm-6 col-md-3 gaoxiao">
                <span class="bgi-5"></span>
                <span>规范</span>
                <span class="fonts">标准的实战教程，不会走弯路</span>

            </div>

            <div class="col-12 col-sm-6 col-md-3 gaoxiao">
                <span class="bgi-6"></span>
                <span>人脉</span>
                <span class="fonts">同班好友，同院学长，技术大师，入学就混入职脉圈，为以后铺平道路。</span>

            </div>

            <div class="col-12 col-sm-6  col-md-3  gaoxia">
                <div class="gaoxi">
                    <span class="bgi-7"></span>
                    <span>12400</span>
                </div>
                <span class="fonts">累计在线学习人数</span>
                <div class="gaoxi">
                    <span class="bgi-7"></span>
                    <span>12400</span>
                </div>
                <span class="fonts">学员已经找到满意工作</span>


            </div>
        </div>

    </div>
    <!-- 内容的第二行 -->
    <h6 style=" text-align: center;margin: 40px;">如何学习</h6>

    <!-- 内容的第三行 -->
    <div class="container">
        <div class="row">
            <div class=" col-md-3">
                <div class="there">

                    <span class="bg-1">1</span>
                    <span class="fonts">匹配你现在的个人情况寻找适合自己的岗位</span>



                    <span class="bgi-8"></span>
                </div>
            </div>

            <div class=" col-md-3">
                <div class="there">

                    <span class="bg-1">2</span>
                    <span class="fonts">了解职业前景薪金待遇、竞争压力等</span>



                    <span class="bgi-8"></span>
                </div>
            </div>
            <div class=" col-md-3">
                <div class="there">

                    <span class="bg-1">3</span>
                    <span class="fonts">掌握行业内顶级技能</span>


                    <span class="bgi-8"></span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="there">

                    <span class="bg-1">4</span>
                    <span class="fonts">查看职业目标任务</span>



                    <span class="bgi-8"></span>
                </div>
            </div>


        </div>
    </div>

    <!-- 内容的第四行 -->
    <div class="container">
        <div class="row">
            <div class=" col-md-3">
                <div class="there">
                    <span class="bg-1">5</span>
                    <span class="fonts">匹配你现在的个人情况寻找适合自己的岗位</span>
                    <span class="bgi-8"></span>
                </div>
            </div>

            <div class=" col-md-3">
                <div class="there">
                    <span class="bg-1">6</span>
                    <span class="fonts">了解职业前景薪金待遇、竞争压力等</span>
                    <span class="bgi-8"></span>
                </div>
            </div>
            <div class=" col-md-3">
                <div class="there">
                    <span class="bg-1">7</span>
                    <span class="fonts">掌握行业内顶级技能</span>
                    <span class="bgi-8"></span>
                </div>
            </div>
            <div class="col-md-3">
                <div class="there">
                    <span class="bg-1">8</span>
                    <span class="fonts">查看职业目标任务</span>
                    <span class="bgi-8"></span>
                </div>
            </div>
        </div>
    </div>

    <!-- 内容的第五行 -->
    <h6 style=" text-align: center;margin: 40px;">优秀学员展示</h6>
    <!-- 内容的第六行 -->
    <div class="container">
        <div class="row">

           <c:forEach items="${list}" var="student">
            <div class="col-md-3 col-sm-12">
                <div class=" touxiang">
                    <span class="${student.img}"></span>
                    <span class="fonts">${student.job}：${student.name}</span>
                    <span class="fonts">${student.introduction}</span>
                </div>
            </div>
            </c:forEach>

        </div>
    </div>
    <!-- 内容的第七行 -->
    <p class="yuanyuan">
        <span class="yuans"></span>
        <span class="yuan"></span>
        <span class="yuan"></span>
        <span class="yuan"></span>
    </p>
    <h6 style=" text-align: center;margin: 40px;">战略合作企业</h6>
    <!-- 内容的第八行 -->
    <!-- 这一行是直接使用媒体查询 实现的响应式 -->
    <div class="zhan" style="width:100%; background-color: white;">
        <div class=" zhanyue">
            <span class="bgi-13"></span>
        </div>
        <div class=" zhanyue">
            <span class="bgi-14"></span>
        </div>
        <div class=" zhanyue">
            <span class="bgi-15"></span>
        </div>
        <div class=" zhanyue">
            <span class="bgi-16"></span>
        </div>
        <div class=" zhanyue">
            <img src="/static/css-task8/company4.png">
        </div>
    </div>

    <!-- 内容的最后一行 -->
    <div>
        <p style="text-align:center;margin: 40px;">友情链接</p>
        <div class="container marg">

            <ul class="row ruanjian">
                <!-- 对md等不只可以设置数字>13 而且可以设置百分比 反正一行为100% -->
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
            </ul>
            <ul class="row ruanjian">
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
                <li class="col-md-10% shouj"><span class="shouji">手机软件</span></li>
            </ul>
        </div>
    </div>
</main>
