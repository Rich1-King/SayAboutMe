/**
 * Created by rich1 on 7/6/16.
 */

var headerDiv = document.getElementById("header");
var courseul = document.getElementById("courseUl");
var addCourse = document.getElementById("addCourse");
var courseDiv = document.getElementById("courseDiv");
var displayCourse = document.getElementById("displayCourse");
var mainContent = document.getElementById("mainContent");
var frame = document.getElementById("frame");

window.onscroll = function (){
    if(window.pageYOffset > 0) {
        headerDiv.style.boxShadow = "0px 1px 5px #86A2A2";
        headerDiv.style.borderWidth = "1px";
        headerDiv.style.borderColor = "#86A2A2";
        headerDiv.style.borderStyle = "solid"
        headerDiv.style.borderTop = "1px";
    }
    else
    {
        headerDiv.style.boxShadow = null;
        headerDiv.style.borderWidth = null;
        headerDiv.style.borderColor = null;
        headerDiv.style.borderStyle = null;
        headerDiv.style.borderTop = null;
    }
}
   
function selectedDivOver(obj){
    obj.firstChild.nextSibling.style.display = "inherit";
    obj.style.backgroundColor = "#13E91E";

}
function selectedDivOut(obj){
    obj.firstChild.nextSibling.style.display = "none";
    if(obj != objBuf) {
        obj.style.backgroundColor = "#E9E9E9";
    }
}

function selectedOver(obj){
    obj.style.opacity = "0.5";
}

function selectedOut(obj){
    obj.style.opacity = "1";
    obj.style.backgroundColor = "black";
}
var objBuf = null;
function SelectedClick(obj){
    if(objBuf != obj.parentNode.parentNode && objBuf != null)
    {
        objBuf.style.backgroundColor = "#E9E9E9";
    }
    obj.style.backgroundColor = "gray";
    obj.parentNode.parentNode.style.backgroundColor = "#13E91E";
    objBuf = obj.parentNode.parentNode;
    
    switch(obj)
    {
        case addCourse:
            frame.src = "addCourse.jsp";
            break;
        case displayCourse:
            frame.src = "kebiao.jsp";
            break;
    }
    
}

function iframeLoad() {
    if(frame.Document){//ie自有属性
        frame.style.height = frame.Document.documentElement.scrollHeight;
    }else if(frame.contentDocument){//ie,firefox,chrome,opera,safari
        frame.height = frame.contentDocument.body.offsetHeight ;
    }
}