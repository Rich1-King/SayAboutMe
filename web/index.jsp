<%--
  Created by IntelliJ IDEA.
  User: rich1
  Date: 7/1/16
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>schongking的主页</title>
    <link rel="stylesheet" href="/css/index.css" type="text/css"/>
  </head>
  <body>
      <div id="header">
          <div id="myselfTip">schongking的主页</div>
          <div id="select">
            <ul class="selectUl">
              <li>
                  <div id="login" onclick="login()"
                       onmouseover="mouseover(this)"
                       onmouseleave="mouseleave(this)"><u
                          style="color:white">登录</u></div>
              </li>
              <li>
                  <div id="resign" onclick="resign()"
                       onmouseover="mouseover(this)"
                       onmouseleave="mouseleave(this)"><u style="color:white">注册
                  </u></div>
              </li>
            </ul>
          </div>
      </div>
      <div id="content" style="overflow:hidden">
             <div id="mainContent">
                 <img id="img1" class="img" src="/image/main1.jpg"/>
                 <img id="img2" class="img" src="/image/main2.jpg"/>
                 <img id="img3" class="img" src="/image/main3.jpg"/>
                 <img id="img4" class="img" src="/image/main4.jpg"/>
             </div>
             <div id="switer">
                 <div class="switer_image" id="image1Div"
                      onmouseover="imageOver(this)"
                      onclick="selectImage(this)"
                      onmouseleave="imageLeave()"
                      ></div>
                 <div class="switer_image"
                      onmouseover="imageOver(this)"
                      onclick="selectImage(this)"
                      onmouseleave="imageLeave()"
                      ></div>
                 <div class="switer_image"
                      onmouseover="imageOver(this)"
                      onclick="selectImage(this)"
                      onmouseleave="imageLeave()"
                     ></div>
                 <div class="switer_image"
                      onmouseover="imageOver(this)"
                      onclick="selectImage(this)"
                      onmouseleave="imageLeave()"
                     ></div>
             </div>
      </div>
  </body>
  <script language="JavaScript" src="/js/index.js"></script>
</html>
