/**
 * Created by rich1 on 7/12/16.
 */

function submitCourse() {
    $.post("addCourse",
            {
                courseName: $("#courseName").attr(value),
                courseTeacher: $("#courseTeacher").attr(value),
                courseTime: $("#courseTime").val(),
                courseRoom: $("#courseRoom").attr(value),
            },
            function(data,statusText)
            {
                alert("添加成功");
            },
    json);
    
}
