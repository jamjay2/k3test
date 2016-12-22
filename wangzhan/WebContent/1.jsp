<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>每日员工绩效</title>
	<style type="text/css">
body{font-size:18px;background-color:#FFF;overflow:hidden;}
td{font-size:18px;}
.titletd td{background-color:#EFEFEF;padding:6px;text-align:center;}
.datatd td{background-color:#FFFFFF;height:30px;padding-left:2px;text-align:center;}
.td1{width:50px;}
.td2{width:80px;}
.td3{width:80px;}
.td4{width:560px;}
.td5{width:55px;}
.td6{width:55px;}
.td7{width:80px;}

#scrollDiv{width:900px;top:100px;bottom:0;min-height:25px;line-height:25px;border:#ccc 0px solid;overflow:hidden}

</style>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
    (function ($) {
        $.fn.extend({
            Scroll: function (opt, callback) {
                //参数初始化
                if (!opt) var opt = {};
                var _this = this.eq(0).find("tbody:first");
                var lineH = _this.find("tr:first").height(), //获取行高
                        line = opt.line ? parseInt(opt.line, 10) : parseInt(this.height() / lineH, 10), //每次滚动的行数，默认为一屏，即父容器高度
                        speed = opt.speed ? parseInt(opt.speed, 10) : 500, //卷动速度，数值越大，速度越慢（毫秒）
                        timer = opt.timer ? parseInt(opt.timer, 10) : 2000; //滚动的时间间隔（毫秒）
                if (line == 0) line = 1;
                var upHeight = 0 - line * lineH;
                var downHeight=line * lineH - 0;
                //滚动函数
                scrollUp = function () {
                    _this.animate(
                        { marginTop: upHeight },
                        speed,
                        function () {
                            for (i = 1; i <= line; i++) {
                                _this.find("tr:first").appendTo(_this);
                            }
                            _this.css({ marginTop: 0 });
                        }
                    );
                },
                //向下滚动函数
                scrollDown = function () {
                    _this.animate(
                        { marginTop: downHeight },//动画展示css样式
                        speed,
                        function () {
                            _this.find("tr:last").prependTo(_this);
                            _this.css({ marginTop: 0 });
                        }
                        )
                }
                var timerID
                //鼠标事件绑定
                _this.hover(function () {
                    clearInterval(timerID);
                }, function () {
                    timerID = setInterval("scrollUp()", timer);//这里调用向下或者向上滚动函数
                }).mouseout();
            }
        })
    })(jQuery);

    $(document).ready(function () {
        $("#scrollDiv").Scroll({ line: 1, speed: 500, timer: 2000 });
    });
</script>

<script type="text/javascript" id="headerpagebeginjs-144281705_6334">try {window.external.pagestate(window, "window.pagebegin");var jsPageBeginNode = document.getElementById("headerpagebeginjs-144281705_6334");if (jsPageBeginNode){jsPageBeginNode.parentNode.removeChild(jsPageBeginNode);}} catch(e) {}</script>
<script type="text/javascript" id="headerjs-144281705_6334" sogou-script="true" src="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/extheadercontentscript/?sbid=headerjs-144281705_6334&isTopFrame=true&url=http%3A%2F%2F192.168.16.80%2F" charset="UTF-8"></script>
<link rel="stylesheet" id="headercss-144281705_6334" type="text/css" href="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/extcontentcss/?sbid=headercss-144281705_6334&isTopFrame=true&url=http%3A%2F%2F192.168.16.80%2F" charset="UTF-8"></link>
<script type="text/javascript" id="headercssdeljs-144281705_6334">var jsCSSNode = document.getElementById("headercss-144281705_6334");if (jsCSSNode){jsCSSNode.parentNode.removeChild(jsCSSNode);}var jsSelfNode = document.getElementById("headercssdeljs-144281705_6334");if (jsSelfNode){jsSelfNode.parentNode.removeChild(jsSelfNode);}</script>
<script type="text/javascript" id="sbid-secureinput" sogou-script="true" src="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/secureinputjs/" charset="UTF-8"></script>
</head>
<body>






<table border="0" width="800" cellspacing="0" cellpadding="0">
 <tr style="text-align:center"><td> <font size=7>每日员工绩效考核</font></td></tr>
  <tr>
    <td width="800">
<table width="800" border="0" cellpadding="0" cellspacing="1" bgcolor="#cccccc">

<tr class="titletd"   style="text-align:center">
  <td nowrap rowspan="2"   class="td1" >班组</td>
  <td nowrap rowspan="2" class="td2"  >员工号</td>
  <td nowrap rowspan="2" class="td3"  >姓名</td>
  <td nowrap colspan="7"  >考核指标（扣分）</td>
  <td nowrap rowspan="2" class="td5"  >得分</td>
  <td nowrap rowspan="2" class="td6"  >绩效等级</td>
 </tr>
<tr class="titletd" style="text-align:left" >
  <td nowrap class="td7" >安全（20分）</td>
  <td nowrap class="td7"  >质量（20分）</td>
  <td nowrap class="td7"  >效率（20分）</td>
  <td nowrap class="td7"  >执行力（15分）</td>
  <td nowrap class="td7"  >数据统计（10分）</td>
  <td nowrap class="td7"  >5S（15分）</td>
  <td nowrap class="td7" >加分项（20分)</td>
 </tr>
</table>
</td>
  </tr>
  <tr>
  <td width="100%">
<div id="scrollDiv">

<table width="800" border="0" cellpadding="0" cellspacing="1" bgcolor="#cccccc" style="margin-top:-1px;">
<tbody class="datatd">


	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >95.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >97.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >97.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >97.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >3.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >96.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >3.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >98.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >98.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >3.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >96.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >95.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.9</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >97.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td5" >95.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

	<tr>
		<td nowrap class="td1" >一班</td>
		<td nowrap class="td2" >1601114</td>
		<td nowrap class="td3" >王克</td>
		<td nowrap class="td7" >1.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >0.0</td>
		<td nowrap class="td7" >2.0</td>
		<td nowrap class="td5" >99.0</td>
		<td nowrap class="td6" >优</td>
	</tr>

</tbody>
</table>
</div>

</td>
  </tr>
</table>
<br>






</body>
</html><script type="text/javascript" id="tailjs-144281705_6334" sogou-script="true" src="https://BCC0E825-2420-4190-AF25-ABD45D41EA3A/se/exttailcontentscript/?sbid=tailjs-144281705_6334&isTopFrame=true&url=http%3A%2F%2F192.168.16.80%2F" charset="UTF-8"></script>
<script type="text/javascript" id="tailpageendjs-144281705_6334">try {window.external.pagestate(window, "window.pageend");var jsPageEndNode = document.getElementById("tailpageendjs-144281705_6334");if (jsPageEndNode){jsPageEndNode.parentNode.removeChild(jsPageEndNode);}} catch(e) {}</script>
