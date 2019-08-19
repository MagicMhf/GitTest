<%@page import="com.unicom.base.MainService"%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="三要素详情" base="http" lib="ext,jquery">
<head>
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common2.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/golist.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
    <!--主要样式-->
</head>
    <body  class="body_bg">
    <DIV id="TipLayer" style="visibility:hidden;position:absolute;z-index:1000;top:-100px"></DIV>

    <%--<table width="95%" border="0" cellspacing="0" cellpadding="0" class="left">
        <tr>
            <td><span class="reder">当前位置：</span><a href="main1.html" target="mainFrame">首页</a>> 三要素验证简版 </td>
        </tr>
    </table>--%>
    <br>
    <table width="95%" border="0" cellspacing="0" cellpadding="0" class="left">
        <tr>
            <td width="18%" rowspan="3" ><div align="center"><img src="${cxt}/static/image/unicom/detail_simple.jpg" width="170" height="170"></div></td>
            <td colspan="2" valign="top" ><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="2%">&nbsp;</td>
                    <td width="98%"><p><b>三要素核验简版</b></p>
                        <p> 主要是针对用户姓名、手机号、证件号三要素的核实。可判断用户的姓名，和证件号为空情况下的三要素核实</p></td>
                </tr>
            </table>
            </td>
            <td width="4%" rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td height="96" colspan="2" align="left">

                <div align="left"><table width="90%"  border="0" align="left" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
                    <tr>
                        <td class="MainRightTab_td"><table width="100%"   height="78" border="0" cellspacing="0" cellpadding="0" class="MainRightTab_bg1">

                            <tr>
                                <td width="19%" height="32" align="right" class="MainRightTab_td1"><div align="left"></div>
                                    <table width="100%" height="18" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                            <td width="5%"><span style="color:#000000;font-weight:bold;">价格：</span></td>
                                            <td width="95%" >
                                                <span style="color:#FF0000;font-weight:bold;" id="price">100</span>
                                                <span style="color:#FF0000;font-weight:bold;">元</span>
                                            </td>
                                        </tr>
                                    </table></td>
                            </tr>
                            <tr>
                                <td align="right" class="MainRightTab_td1"><table width="100%" height="18" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td width="5%" valign="middle"><span style="color:#000000;font-weight:bold;">规格：</span></td>
                                        <td width="95%" ><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <form name="form1" method="post" action="">
                                                    <td>
                                                        <input type="radio" name="radiobutton" value="100" onclick="modPrice('100')" checked><b>100次≈1.00元/次</b>
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="radiobutton" value="1000" onclick="modPrice('950')"><b>1000次≈0.95元/次</b>
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="radiobutton" value="10000" onclick="modPrice('8000')"><b>1万次≈0.80元/次</b>
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="radiobutton" value="50000" onclick="modPrice('35000')"><b>5万次≈0.70元/次</b>
                                                    </td>
                                                    <td>
                                                        <input type="radio" name="radiobutton" value="100000" onclick="modPrice('50000')"><b>10万次≈0.50元/次</b>
                                                    </td>
                                                </form>
                                            </tr>
                                        </table></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </table></td>
                    </tr>
                </table></div></td>
        </tr>
        <tr>
            <td width="9%" >&nbsp;</td>
            <td width="69%" ><table width="450"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="150">
                        <a href="javascript:void(0);" onclick="fnaddtab('mainService.initPayment3','支付确认','payment3')">
                        <%--<a href="buy1.html" target="mainFrame" >--%><button class="golistbutton button1">购买</button></a>
                    </td>
                    <td width="150">
                    	<a href="javascript:void(0);" onclick="fnaddtab('mainService.initSimpleTryout','试用','simpletryout')">
                    		<button class="golistbutton button2">试用</button></a></td>
                    <td width="150">
                        <a href="javascript:void(0);" onclick="fnaddtab('mainService.initSimpleInvoke','数据调用','simpledataInvoke')" >
                            <button class="golistbutton button3">调用</button>
                        </a>
                    </td>
                </tr>
            </table></td>
        </tr>
    </table>
    <table width="95%"  height="10" border="0" cellspacing="0" cellpadding="0" class="left">
        <tr>
            <td ></td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div id="new_box">
        <div class="new_con">
            <div class="newtel">
                <ul class="new_telst">
                    <li class="newon">数据描述</li>
                    <li class="">API详情</li>
                    <li class="">订单记录</li>
<!--                     <li class="">评论</li> -->
                    <p style="left: 0px;">
                        <b></b>
                    </p>
                </ul>
                <div class="clear">
                </div>
            </div>
            <div class="new-wrap">
                <!--数据描述1-->
                <div class="new_lst show" style="display: block;">
                    <li class="new_cnlf">
                        <table width="1024" border="0" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
                            <tr>
                                <td class="MainRightTab_td">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="MainRightTab_bg1">
                                    <tr>
                                        <td width="19%" align="right" class="MainRightTab_td1">
                                            <p align="left"><b>数据描述：</b></p>
                                            <p align="left">对用户身份证真实性进行核验</p>
                                            <p align="left"><b>应用场景：</b></p>
                                            <p align="left"> 可供金融、贷款、担保、法律、航空、物流、婚恋、旅游、租赁、保险、人力资源等各类有需求的政府、企业、单位使用。</p>
                                            <p align="left">计费方式：查得付费</p>
                                            <p align="left"><b>量级及覆盖范围：</b>全国</p>
                                            <p align="left"><b>更新频率：</b>实时</p>
                                            <p align="left"><b>数据来源：</b>运营商</p></td>
                                    </tr>
                                </table>
                                </td>
                            </tr>
                        </table>
                    </li>
                </div>
                <!--API详情2-->
                <div class="new_lst" style="display: none;">

                        <li class="new_cnlf">
                     <p><b>　　业务请求参数</b></p>
                    <table width="1024" border="0" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
                    <tr>
                                <td class="MainRightTab_td">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="MainRightTab_bg1">
                    
                        <thead width="19%" align="left" class="MainRightTab_td1">
                            <td><b>名称</b></td>
                            <td><b>类型</b></td>
                            <td><b>必填</b></td>
                            <td><b>示例值</b></td>
                            <td><b>描述</b></td>
                        </thead>
                        <tbody width="19%" align="left" class="MainRightTab_td1">
                            <tr>
                                <td>id</td>
                                <td>String</td>
                                <td>是</td>
                                <td>341222198612030759</td>
                                <td>身份证号码</td>
                            </tr>
                            <tr>
                                <td>name</td>
                                <td>String</td>
                                <td>是</td>
                                <td>张三</td>
                                <td>姓名</td>
                            </tr>
                            <tr>
                                <td>telnumber</td>
                                <td>String</td>
                                <td>是</td>
                                <td>13333333333</td>
                                <td>手机号码</td>
                            </tr>
                        </tbody>
                                </table></td>
                            </tr>
                    </table>
                    
                    
                    <p><b>　　返回参数</b></p>
                    <table width="1024" border="0" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
                    <tr>
                                <td class="MainRightTab_td">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="MainRightTab_bg1">
                    
                        <thead width="19%" align="left" class="MainRightTab_td1">
                            <td><b>名称</b></td>
                            <td><b>类型</b></td>
                            <td><b>示例值</b></td>
                            <td><b>描述</b></td>
                        </thead>
                        <tbody width="19%" align="left" class="MainRightTab_td1">
                            <tr>
                                <td>接口调用结果</td>
                                <td>String</td>
                                <td>成功/失败</td>
                                <td>接口调用结果</td>
                            </tr>
                            <tr>
                                <td>realname</td>
                                <td>String</td>
                                <td>张三</td>
                                <td>姓名</td>
                            </tr>
                            <tr>
                                <td>mobile</td>
                                <td>String</td>
                                <td>13333333333</td>
                                <td>手机号码</td>
                            </tr>
                            <tr>
                                <td>idcard</td>
                                <td>String</td>
                                <td>341222198612030759</td>
                                <td>身份证号码</td>
                            </tr>
                            <tr>
                                <td>res</td>
                                <td>int</td>
                                <td>1匹配，2不匹配</td>
                                <td>匹配结果</td>
                            </tr>
                            <tr>
                                <td>resmsg</td>
                                <td>string</td>
                                <td>匹配/验证不一致（姓名不匹配）/验证不一致（身份证不匹配）/</td>
                                <td>说明</td>
                            </tr>
                            <tr>
                                <td>　</td>
                                <td>　</td>
                                <td>验证不一致（姓名身份证均不匹配）/验证不一致（具体要素不匹配未知)</td>
                                <td>　</td>
                            </tr>
                            <tr>
                                <td>error_code</td>
                                <td>int</td>
                                <td>返回0表示调用成功</td>
                                <td>错误代码</td>
                            </tr>
                        </tbody>
                                </table></td>
                            </tr>
                    </table>
                    
                        </li>
                </div>
                <!--订单记录3-->
                <div class="new_lst show" style="display: none;">
					<li class="new_cnlf">
						<table width="1024" border="0" cellpadding="0" cellspacing="1" class="MainRightTab_bg left">
							<tr>
								<td class="MainRightTab_td">									
									<table width="100%" border="0" cellspacing="0" cellpadding="0" class="MainRightTab_bg1">
										<tbody id="tt" class="MainRightTab_td1"></tbody>
									</table>
								</td>
							</tr>
						</table>
					</li>
                </div>
            </div>
        </div>
    </div>
    <div><!-- 辅助传值 -->
		<input type="hidden" name="guige" id="guige" value="${guige}"></input>
	</div>
    <script type="text/javascript">
        $(document).ready(function(){
            //设计案例切换
            $('.new_telst li').mouseover(function(){
                var liindex = $('.new_telst li').index(this);
                $(this).addClass('newon').siblings().removeClass('newon');
                $('.new-wrap div.new_lst').eq(liindex).fadeIn(150).siblings('div.new_lst').hide();
                var liWidth = $('.new_telst li').width();
                $('.newtel .new_telst p').stop(false,true).animate({'left' : liindex * liWidth + 'px'},300);
            });

    		$.ajax({
    			type : "post",
    			url : '/aos/http/do.jhtml?router=mainService.kksan&juid=${juid}',
    			data : {},
    			dataType: "json",
    			success:function(res){
    				console.log(res.user_id);
    				$("#tt").html(res.result);
    			}
    		});
        });
        
        
        function modPrice(p){
            //alert(p);
            $("#price").text(p);
            
        }
    </script>
    </body>
</aos:html>
<script>
    //开新tab页
    function fnaddtab(url, menuname, module_id) {
    	if(url=='mainService.initPayment3'){
    		url=url+'&price='+$("#price").text();
    	}
    	
    	window.parent.fnaddtab(url,menuname,module_id,'');
    }
</script>