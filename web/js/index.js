/**
 * Created by rich1 on 7/4/16.
 */

var resignBut = document.getElementById("resign");
var loginBut = document.getElementById("login");
var headerDiv = document.getElementById("header");


function resign(){
    resignBut.firstElementChild.style.color = "red";
    window.location.href = "/jsp/resign.jsp";
    resignBut.firstElementChild.style.color = "white";          

}

function login(){
    loginBut.firstElementChild.style.color = "red";
    window.location.href = "/jsp/login.jsp";
    loginBut.firstElementChild.style.color = "white";
}
function mouseover(obj){
    obj.firstElementChild.style.color= "#6F97D2";
}

function mouseleave(obj){
    obj.firstElementChild.style.color = "white";
}
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

var selectImageObj = document.getElementsByClassName("switer_image");

function selectImage(obj){
}
function imageOver(obj){
    for(var i=0; i<selectImageObj.length; i++)
    {
        selectImageObj[i].style.background = "transparent";
    }
    obj.style.background = "gray";
    clearInterval(intervalId);

    for(var i = 0; i < imgSort; i++)
    {
        objImg[i].style.zIndex = "0";
        objImg[i].style.right = "0px";
    }

    switch(obj)
    {
        case selectImageObj[0]:
            lengthImage  = 0;
            objImg[0].style.zIndex = "5";
            break;
        case selectImageObj[1]:
            lengthImage = 1368;
            objImg[0].style.right = "-4104px";
            for(var i = 1; i< imgSort; i++) {
                objImg[i].style.right = "1368px";
            }
            objImg[1].style.zIndex = "5";
            break;
        case selectImageObj[2]:
            lengthImage = 2736;
            objImg[0].style.right = "-2736px";
            objImg[1].style.right = "-2736px";
            for(var i = 2; i < imgSort; i++) {
                objImg[i].style.right = "2736px";
            }
            objImg[2].style.zIndex = "5";
            break;
        case selectImageObj[3]:
            lengthImage = 4104;
            for(var i = 0; i < (imgSort-1); i++)
            {
                objImg[i].style.right = "-1368px";
            }
            objImg[3].style.right = "4104px";
            objImg[3].style.zIndex = "5";
            break;
    }
}
function imageLeave() {
    intervalId = window.setInterval("huaDong()",1);
}
var objImg = document.getElementsByClassName("img");
imgSort = objImg.length;

for(var i = 0; i < imgSort; i++)
{
    objImg[i].style.right = "0px";
}
var lengthImage = 0;
var intervalId = window.setInterval("huaDong()",1);
function huaDong(){
    lengthImage = lengthImage + 1;
    for(var i = 0; i<imgSort; i++)
    {
        objImg[i].style.right = (parseInt(objImg[i].style.right) + 1) + "px";
        selectImageObj[i].style.backgroundColor = "transparent";
    }
    selectImageObj[parseInt(lengthImage/1368)].style.backgroundColor = "gray";
    var lengthYu = lengthImage%1368;
    
    if(lengthYu == 0)
    {
        objImg[parseInt(lengthImage/1368)-1].style.right = (parseInt(objImg[parseInt(lengthImage/1368)-1].style.right) - 5472) + "px";
    }
    if(lengthImage == 5471)
    {
        lengthImage = 0;
        objImg[parseInt(5472/1368)-1].style.right = (parseInt(objImg[parseInt(5472/1368)-1].style.right) - 5472) + "px";
    }
};