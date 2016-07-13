<%--
  Created by IntelliJ IDEA.
  User: rich1
  Date: 7/10/16
  Time: 11:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加课表</title>
    <link rel="stylesheet" href="../css/addcourse.css" type="text/css"/>
    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.0.js"></script>
</head>
<body>
    <div id="title">
        添加课表
    </div>
    <div id="mainSelectCourse">
        <ul id="addCourseUl">
            <li class="li_class">&nbsp;&nbsp;&nbsp;课程名：
                <input class="li_input_text" id="courseName",ype="text"/>
                <span class="spanTip">请认真填写课程名</span>
            </li>
            <li class="li_class">任课老师:
                <input class="li_input_text" id="courseTeacher" type="text"/>
                <span class="spanTip">请认真填写上课老师的名字</span>
            </li>
            <li class="li_class">上课时间：
                <select id="courseTime">
                    <option>周一 08:30~10:00</option>
                    <option>周一 10:30~12:00</option>
                    <option>周一 14:30~16:00</option>
                    <option>周一 16:30~18:00</option>
                    <option>周一 19:30~21:00</option>
                    <option>周二 08:30~10:00</option>
                    <option>周二 10:30~12:00</option>
                    <option>周二 14:30~16:00</option>
                    <option>周二 16:30~18:00</option>
                    <option>周二 19:30~21:00</option>
                    <option>周三 08:30~10:00</option>
                    <option>周三 10:30~12:00</option>
                    <option>周三 14:30~16:00</option>
                    <option>周三 16:30~18:00</option>
                    <option>周三 19:30~21:00</option>
                    <option>周四 08:30~10:00</option>
                    <option>周四 10:30~12:00</option>
                    <option>周四 14:30~16:00</option>
                    <option>周四 16:30~18:00</option>
                    <option>周四 19:30~21:00</option>
                    <option>周五 08:30~10:00</option>
                    <option>周五 10:30~12:00</option>
                    <option>周五 14:30~16:00</option>
                    <option>周五 16:30~18:00</option>
                    <option>周五 19:30~21:00</option>
                    <option>周六 08:30~10:00</option>
                    <option>周六 10:30~12:00</option>
                    <option>周六 14:30~16:00</option>
                    <option>周六 16:30~18:00</option>
                    <option>周六 19:30~21:00</option>
                    <option>周日 08:30~10:00</option>
                    <option>周日 10:30~12:00</option>
                    <option>周日 14:30~16:00</option>
                    <option>周日 16:30~18:00</option>
                    <option>周日 19:30~21:00</option>
                </select>
                <span class="spanTip" id="spanClassTime">请选择上课的时间</span>
            </li>
            <li class="li_class">上课教室:
                <input class="li_input_text" type="text" id="courseRoom"/>
                <span class="spanTip">请填写上课的教室</span>
            </li>
            <li class="li_class">
                <input id="submitCourse" type="submit" value="提交"
                       onclick="submitCourse()"/>
            </li>
        </ul>
    </div>
</body>
    <script language="JavaScript" src="/js/addcourse.js"></script>
</html>
