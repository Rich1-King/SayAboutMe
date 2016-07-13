<%--
  Created by IntelliJ IDEA.
  User: rich1
  Date: 7/6/16
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>schongking的主页</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css"/>
</head>
<body>
<div id="header">
    <div id="myselfTip">schongking的主页</div>
    <div id="select">
        <ul class="selectUl">
            <li>
                <div id="login"><%=session.getAttribute("username")%></div>
            </li>
            <li>
                <div id="resign"><%=session.getAttribute("permission")%></div>
            </li>
        </ul>
    </div>
</div>
<div id="content" style="overflow:hidden">
    <div id="topTitleDiv">
        <div class="selectedDiv" id="courseDiv"
             onmouseover="selectedDivOver(this)"
             onmouseout="selectedDivOut(this)">课程
                <ul class="selectedUl" id="courseUl"
                    style="background-color:black;
                display:none">
                    <li class="addLine" id="addCourse"
                        onmouseover="selectedOver(this)"
                        onmouseout="selectedOut(this)"
                        onclick="SelectedClick(this)">
                        添加课程</li>
                    <li id="displayCourse"
                        onmouseover="selectedOver(this)"
                        onmouseout="selectedOut(this)"
                        onclick="SelectedClick(this)">
                        显示课表</li>
                </ul>
        </div>
        <div class="selectedDiv" id="blogDiv"
             onmouseover="selectedDivOver(this)"
             onmouseout="selectedDivOut(this)">博客
            <ul class="selectedUl" id="blogUl"
                style="background-color:black;
                display:none">
                <li class="addLine" id="viewBlog"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">查看博客</li>
                <li class="addLine" id="addBlog"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">添加博客</li>
            </ul>
        </div>
        <div class="selectedDiv" id="musicDiv"
             onmouseover="selectedDivOver(this)"
             onmouseout="selectedDivOut(this)">音乐
            <ul class="selectedUl" id="musicUl"
                style="background-color:black;
                display:none">
                <li class="addLine" id="musicList"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">音乐列表</li>
                <li class="addLine" id="musicType"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">音乐分类</li>
            </ul>
        </div>
        <div class="selectedDiv" id="movieDiv"
             onmouseover="selectedDivOver(this)"
             onmouseout="selectedDivOut(this)">电影
            <ul class="selectedUl" id="movieUl"
                style="background-color:black;
                display:none">
                <li class="addLine" id="movieList"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">电影列表</li>
                <li class="addLine" id="movieType"
                    onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">电影分类</li>
            </ul>
        </div>
        <div class="selectedDiv" onmouseover="selectedDivOver(this)"
             onmouseout="selectedDivOut(this)">关于我
            <ul class="selectedUl" id="aboutMe"
                style="background-color:black;
                display:none">
                <li class="addLine" onmouseover="selectedOver(this)"
                    onmouseout="selectedOut(this)"
                    onclick="SelectedClick(this)">我的信息</li>
            </ul>
        </div>
    </div>
    <div id="left"></div>
    <div id="right"></div>
    <div id="center">
        <div id="mainContent">
            <iframe id="frame" scrolling="no" onload="iframeLoad()"></iframe>
        </div>
    </div>
    <div ></div>
</div>
<div id="footer">

</div>
</body>
<script language="JavaScript" src="/js/main.js"></script>
</html>

