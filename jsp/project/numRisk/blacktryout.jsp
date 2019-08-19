<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="试用" base="http" lib="jquery">
<head>
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <!--主要样式-->
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
</head>
<body class="body_bg">
			
				<table border="1" width="80%" height="400px" cellspacing="0" cellpadding="0" class="left">
					<tr>
						<td rowspan="2">
								<table border="0" width="100%" cellspacing="0" cellpadding="0">
									<tr align = "left" >
										<th colspan="6">接口信息</th>
									</tr>
									<tr align="center">
										<td colspan="6">手机黑名单认证</td>
									</tr>
									<tr align="left">
										<td colspan="6">接口：手机黑名单认证</td>
									</tr>
									<tr align="left">
										<td colspan="6">提供法院失信名单、被执行人名单、互金逾期名单、羊毛党等黑名单类数据。</td>
									</tr>
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4">　</td>
									</tr>
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4">　</td>
									</tr>
								</table>
							
							

								<table border="0" width="100%" cellspacing="0" cellpadding="0" class="left">
									<tr align = "left" >
										<th colspan="6">参数填写</th>
									</tr>
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4">　</td>
									</tr>																
																		
									<tr align="left">
										<th colspan="2">　　telNumber：</th>
										<td colspan="4"><input type="text" name="telNumber" required="required" id="telNumber" value=""></input></td>
									</tr>
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4">手机号码<font color="red">*</font></td>
									</tr>
									
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4">　</td>
									</tr>
									<tr align="left">
										<td colspan="2"></td>
										<td colspan="4"><input type="submit" id="clickTryout" ${disabled} value="${clickTryout}" onclick="clickTryout()"></input></td>
									</tr>
									
								</table>
							
							
						</td>						
						<td width="25%" height="100%">
							<a> response</a>
							<textarea style="width:97%;height:95%;resize:none" id="responseJSON" ></textarea>
						</td>
					</tr>
				</table>
			
		<br/><br/>
		<div><!-- 辅助传值 -->
			<input type="hidden" name="user_id" id="user_id" value="${user_id}"></input>
		</div>
</body>
</aos:html>

<script>
    //打开详情tab页
function clickTryout()
{
	if (document.getElementById("telNumber").value!=""){
	document.getElementById("responseJSON").value = "";
	
	var url = "/aos/blackList/probation.do";
	var params = {};
	
    	params.key = "384be25f3a90e3c090dc99d4573cdeaa";
		params.mobile = $("#telNumber").val();
		params.userid = $("#user_id").val();

	    
		$.ajax({
			type : "post",
			async : false,  //同步请求 
			url : url,
			data : params,
	/* 		timeout:1000, */
			 /* dataType: "json", */
			success:function(dates){
				var resultStr = eval("(" + dates + ")"); 
				var result = "接口调用结果:" + resultStr["reason"] + "\n" + "\n" + "mobile:" + resultStr["mobile"] + "\n" + "isLegal:" + resultStr["isLegal"] + "\n" + "isBlack:" + resultStr["isBlack"] + "\n" + "customSource:" + resultStr["customSource"] + "\n" + "error_code:" + resultStr["error_code"] ;
				document.getElementById("responseJSON").value = result;
				var lastnum = resultStr["num"];
				if (lastnum > 0){
					document.getElementById("clickTryout").value = "开始测试：剩余次数"+lastnum;
				}else{
					document.getElementById("clickTryout").value = "开始测试：剩余次数0";
					document.getElementById("clickTryout").setAttribute("disabled", true);
				}
				
				
			},
			error: function() {
				var resultStr = eval("(" + dates + ")"); 
				document.getElementById("responseJSON").value = resultStr["rspStr"];
	        }
		});
		
	}else{
		alert('手机号必填');
	}
}


</script>