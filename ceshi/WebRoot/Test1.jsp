
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<link href="style/a.css" rel="stylesheet" type="text/css">
</head>

<body>
<%request.setAttribute("subject", "T1"); %>
	<form action="fenshu.jsp" method="post">
	
		<div class="qustion">
			1.荷兰的风车主要用于:<br>
	<input type="radio" name="Single1" value="A">A:排水<br>
	<input type="radio" name="Single1" value="B">B：发电<br>
	<input type="radio" name="Single1" value="C">C:观光<br>
		</div>
		<div class="qustion">
			2.被称为“万园之园”的是指<br>
	<input type="radio" name="Single2" value="A">A:苏州园林<br>
	<input type="radio" name="Single2" value="B">B:圆明园<br>
	<input type="radio" name="Single2" value="C">C:乔家大院<br>
	<input type="radio" name="Single2" value="D">D:颐和园<br>
		</div>
		<div class="qustion">
			3.被称作“草原钢城”的是<br>
	<input type="radio" name="Single3" value="A">A:包头<br>
	<input type="radio" name="Single3" value="B">B:集宁<br>
	<input type="radio" name="Single3" value="C">C:通辽<br>
	<input type="radio" name="Single3" value="D">D:呼和浩特<br>
		</div>
		<div class="qustion">
			4.电脑的中央处理器英文简写<br>
	<input type="radio" name="Single4" value="A">A:CPU<br>
	<input type="radio" name="Single4" value="B">B:NPU<br>
	<input type="radio" name="Single4" value="C">C:NBA<br>
	<input type="radio" name="Single4" value="D">D:NPC<br>
		</div>
		<div class="qustion">
			5.哪个年龄的人话最多<br>
	<input type="radio" name="Single5" value="A">A: 6～12岁儿童<br>
	<input type="radio" name="Single5" value="B">B:20~30岁青年度<br>
	<input type="radio" name="Single5" value="C">B:70~80的老人<br>
	<input type="radio" name="Single5" value="D">C:40~50的中年<br>
		</div>
		<div class="qustion">
			6.下列位置中，有极昼极夜现象的是<br>
	<input type="radio" name="Single6" value="A">A:赤道<br>
	<input type="radio" name="Single6" value="B">B: 南纬23.5度<<br>
	<input type="radio" name="Single6" value="C">C: 南纬70度<br>
	<input type="radio" name="Single6" value="D">D:北纬30度<br>
		</div>
		<div class="qustion">
			7.一次性筷子的发明者<br>
	<input type="radio" name="Single7" value="A">A:日本人<br>
	<input type="radio" name="Single7" value="B">B:美国人<br>
	<input type="radio" name="Single7" value="C">C:中国人<br>
	<input type="radio" name="Single7" value="D">D:英国人<br>
		</div>
		<div class="qustion">
			(多选)8.下列属于中国四大美女的有<br>
	<input type="checkbox" name="double8" value="A">A:妲己<br>
	<input type="checkbox" name="double8" value="B">B:西施<br>
	<input type="checkbox" name="double8" value="C">C:王昭君<br>
	<input type="checkbox" name="double8" value="D">D:孙尚香<br>
		</div>
		<div class="qustion">
			(多选)9.下列属于电脑硬件的是<br>
	<input type="checkbox" name="double9" value="A">A:QQ<br>
	<input type="checkbox" name="double9" value="B">B:键盘<br>
	<input type="checkbox" name="double9" value="C">C:鼠标<br>
	<input type="checkbox" name="double9" value="D">D:操作系统<br>
		</div>
		<div class="qustion">
			(多选)10.下列物质<span class="goal">是</span>有机物的是<br>
	<input type="checkbox" name="double10" value="A">A:甲烷<br>
	<input type="checkbox" name="double10" value="B">B:干冰<br>
	<input type="checkbox" name="double10" value="C">C:纯碱<br>
	<input type="checkbox" name="double10" value="D">D:蔗糖<br>
		</div>
		<div align="center">
		<input type="submit" value="提交">
		</div>
		<input type="text" name="subject" value="T1" id="sub">
	</form>
</body>
</html>
