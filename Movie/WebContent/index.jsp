<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/Movie/resource/js/jquery-1.12.1.js"></script>
<script> 

$(document).ready(function(){
    $("#scroll").click(function(){
        $("#div1").animate({
            height: 'toggle'
        });
    });
});

$(document).ready(function(){
    $("#move").click(function(){
        var div2 = $("#div2");  
        div2.animate({left: '100px'}, "slow");
        div2.animate({fontSize: '3em'}, "slow");
        div2.animate({width: 'toggle'});
    });
});

$(document).ready(function(){
    $("#btn1").click(function(){
        $("p").append(" <b>짱</b>");
    });

    $("#btn2").click(function(){
        $("ol").append("<li>짱</li>");
    });
});
</script> 
</head>
<body>
<input type = "button" id="scroll" value= "접기 내리기" />
<input type = "button" id="move" value= "움직이기" />

<br/>

<div id="div1" style="background:#ff9999;height:100px;width:100px;position:absolute;"></div>
<div id="div2" style="background:#ff6666;height:100px;width:200px;left:'250px';position:absolute;">HELLO</div>

<br/><br/><br/><br/><br/>

<button id="btn1">오른쪽 짱</button>
<button id="btn2">아래로 짱</button>

<p>This is Baek Ji Gyeong</p>

<ol>
  <li>백지경</li>
  <li>백지경짱</li>
  <li>백지경짱짱</li>
</ol>

</body>
</html>