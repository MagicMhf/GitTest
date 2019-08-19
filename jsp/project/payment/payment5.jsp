<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="支付确认" base="http" lib="jquery">
<head>
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <!--主要样式-->
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
    <script type="text/javascript"
            src="${cxt}/static/js/unicom/jquery.qrcode.min.js"></script>
</head>
<body class="body_bg">
    <table width="95%" border="0" cellspacing="0" cellpadding="0" class="left">
        <tr>
            <td ></td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table width="95%" height="196" border="0" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
        <tr>
            <td class="MainRightTab_td"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" class="MainRightTab_bg1">

                <tr>
                    <td width="50%" height="100%" align="left" valign="top" class="MainRightTab_td1"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td><strong>订单信息</strong></td>
                            <td align="right"><strong>订单总额：<span class="style1">${price}</span></strong></td>
                        </tr>
                    </table> </td>
                </tr>
                <tr>
                    <td height="31" valign="top" class="MainRightTab_td1"><table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#D7D3D8" bgcolor="#DEDEDE">
                        <tr class="font_weight" height="25">
                            <td width="25%" align="center">产品名称</td>
                            <td width="25%" align="center">规格</td>
                            <td width="25%" align="center">购买次数</td>
                            <td width="25%" align="center">价格（元）</td>
                        </tr>
                    </table>          <div align="left">          </td>
                </tr>
                <tr>
                    <td height="16" valign="middle" class="MainRightTab_td1"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr class="font_weight">
                            <td width="25%" align="center">手机黑名单</td>
                            <td width="25%" align="center">${guige}</td>
                            <td width="25%" align="center">${cishu}</td>
                            <td width="25%" align="center">${price}</td>
                        </tr>
                    </table></td>
                </tr>
                <tr>
                    <td height="16" valign="top" class="MainRightTab_td1"><table width="100%"  border="0" cellpadding="0" cellspacing="1" bgcolor="#0066CC">
                        <tr>
                            <td></td>
                        </tr>
                    </table></td>
                </tr>
                <tr>
                    <td height="8" align="right" valign="top" class="MainRightTab_td1"> <strong><span class="style1">应付金额： ${price}</span></strong></td>
                </tr>
                <tr>
                    <td height="8" align="center" valign="top" class="MainRightTab_td1">
                    <input type="button" id="showQRAndParams" value="确认支付" onclick="DisplayQRAndData()"></input></td>
                </tr>

            </table></td>
        </tr>

    </table>
    <table align="center" border="0">
                <tr>
                		<td align="center" colspan="2" style="width:100%;height:100px">
							<div align="center" id = "qr"></div>
						</td>	
                </tr>

    
    </table>
    	<div><!-- 辅助传值 -->
			<input type="hidden" name="qrcode" id="qrcode" value="${qrcode}"></input>
			<input type="hidden" name="billNo" id="billNo" value="${billNo}"></input>
			<input type="hidden" name ="requestTmp" id="requestTmp" value="${requestTmp}"></input>
			<input type="hidden" name ="responseTmp" id="responseTmp" value="${responseTmp}"></input>
			<input type="hidden" name ="qrcodeId" id="qrcodeId" value="${qrcodeId}"></input>
			<input type="hidden" name ="signTmp" id="signTmp" value="${signTmp}"></input><!--签名数据  -->
			<input type="hidden" name ="operType" id="operType" value="${operType}"></input>
			<input type="hidden" name ="userid" id="userid" value="${userid}"></input>
		</div>
    
</body>
</aos:html>

<script>
    function DisplayQRAndData() {
    	var url = "/aos/getQRCode/blackQRCode.do";
    	var params = {};
    	//console.log($("#userid").val()+1111111);
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        var strHours = date.getHours();
        var strMin = date.getMinutes();
        var strSec = date.getSeconds();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        if (strHours >= 0 && strHours <= 9) {
        	strHours = "0" + strHours;
        }
        if (strMin >= 0 && strMin <= 9) {
        	strMin = "0" + strMin;
        }
        if (strSec >= 0 && strSec <= 9) {
        	strSec = "0" + strSec;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + strHours + seperator2 + strMin
                + seperator2 + strSec;
    	
    	
    	
		params.md5Key = "fcAmtnx7MwismjWNhNKdHC44mNXtnEQeJkRrhKJwyrW2ysRR";		
	    params.systemId = "";
		params.msgType = "bills.getQRCode";
	    params.counterNo = "";
	    params.requestTimestamp = currentdate;
	    params.billDesc = "";
	  
	    params.msgSrc = "WWW.TEST.COM";
	    params.qrCodeId = "";
	    params.mid = "898340149000005";
	    params.tid = "88880001";
	    params.instMid = "QRPAYDEFAULT";
	    
	    params.srcReserve = "";
	    params.notifyUrl = "";
	    params.billNo = "";
	    params.billDate = "";
	    params.totalAmount = ${price};
	    
	    params.returnUrl = "101.71.143.136:9000/aos/NetCallBack/blackback";
	    params.memberId = "";
	    params.userid = $("#userid").val();
	    params.usenum = ${cishu};
	    params.itfcname = "黑名单";
	    
	    
	    
		$.ajax({
			type : "post",
			async : false,  //同步请求 
			url : url,
			data : params,
	/* 		timeout:1000, 
			dataType: "json",*/ 
			success:function(dates){
				console.log("成功");
				var resultStr = eval("(" + dates + ")"); 
				var qrCodeStr = resultStr["qrcode"];
				document.getElementById("qrcode").value = qrCodeStr;
				document.getElementById("billNo").value = billNo;
/* 				document.getElementById("signedStr").value = resultStr["sign"];
				document.getElementById("qrCodeId").value = resultStr["qrCodeId"];
				document.getElementById("toBeSignedStr").value = resultStr["toBeSignedStr"];
				
				document.getElementById("requestTmp").value = resultStr["reqStr"];
				document.getElementById("responseTmp").value = resultStr["rspStr"]; */
				
			},
			error: function() {
				console.log("失败");
				var resultStr = eval("(" + dates + ")"); 
				var qrCodeStr = resultStr["qrcode"];
/* 				document.getElementById("qrcode").value = qrCodeStr;
				document.getElementById("signedStr").value = resultStr["sign"];
				document.getElementById("toBeSignedStr").value = resultStr["toBeSignedStr"];
				document.getElementById("qrCodeId").value = resultStr["qrCodeId"];
	        	
				document.getElementById("requestTmp").value = resultStr["reqStr"];
				document.getElementById("responseTmp").value = resultStr["rspStr"]; */
	        }
		});
		
		$("#qr").html("");
		var qrcode = $('#qrcode').val(); 
		if (qrcode.length !=0)
		{
			$('#qr').qrcode(qrcode);
		}  
		
		var timeout = setInterval(function () {
	          var subscribeId = currentdate;
	          $.ajax({
	              type: "POST",
	              url: "/aos/listenStatus/blacklisten.do",
	              dataType: "json",
	              data: {"subscribeId":subscribeId},
	              success: function (data) {
	            	  var code =data["code"]
	            	  console.log(code)
	                  if (code=="success") {
	                	  alert("支付成功");
	                   	//$("#qr").html(""); 
	              		//$("#qr").append("支付成功");
	                  	clearInterval(timeout);
	                  } else if(code=="wait") {
	                	  console.log("等待");
	                  	
	                  } else{
	                	  alert("支付失败");
	                   	//$("#qr").html(""); 
	              		//$("#qr").append("支付失败，请重试");
	                  	clearInterval(timeout);
	                  } 
	              }
	          }); 
		},3000);

    }

</script>