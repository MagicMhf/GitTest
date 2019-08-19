<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="首页" base="http" lib="ext,jquery">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="${cxt}/static/css/unicom/pageGroup.css"/>
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${cxt}/static/css/unicom/pageGroup.js"></script>
</head>
<body class="body_bg">
<table width="95%" border="0" cellspacing="0" cellpadding="0" class="left" id="tb-one">
    <tr>
        <td width="20%" class="mdTdel"><table width="100%"  border="0" align="left">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc_simple.png"></div></td>
            </tr>
            <tr>
                <td><div align="center" class="moduleName">三要素验证简版 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：1.00元/次</div></td>
            </tr>
            <tr>
                <td><div align="center">
                        <a href="javascript:void(0);" onclick="fnaddtab('mainService.initThirdSimpleEle','三要素验证简版 ','thirdeleSimple')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc_thirdEleVer.png"></div></td>
            </tr>
            <tr>
                <td> <div align="center" class="moduleName">三要素验证详版 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：1.20元/次</div></td>
            </tr>
            <tr>
                <td><div align="center">
                        <a href="javascript:void(0);" onclick="fnaddtab('mainService.initThirdEle','三要素验证详版 ','thirdele')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc_id.png"></div></td>
            </tr>
            <tr>
                <td> <div align="center" class="moduleName">身份证实名认证 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：0.40元/次</div></td>
            </tr>
            <tr>
                <td><div align="center">
                        <a href="javascript:void(0);" onclick="fnaddtab('mainService.initIdEle','身份证实名认证 ','id')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc_black.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">黑名单用户查询</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：3.50元/次</div></td>
            </tr>
            <tr>
                <td><div align="center">
                	<a href="javascript:void(0);" onclick="fnaddtab('mainService.initBlackEle','黑名单','black')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc_moon.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">手机号月消费档次</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：1.35元/次</div></td>
            </tr>
            <tr>
                <td><div align="center">
                	<a href="javascript:void(0);" onclick="fnaddtab('mainService.initMoonEle','月消费','moon')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr>
        </table></td>
        
        
    </tr>
    <tr >
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <br>
    </tr>
    <tr >
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-realLoc.png" width="49" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 实时位置接口 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-realLocCityCmp.png" width="49" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 实时位置地市比对 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-workplaceVer.png" width="46" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 工作地验证</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-domicileVer.png" width="46" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 居住地验证 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-userStateVer.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户状态验证</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        
        
    </tr>
    <tr >
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
    </tr>
    <tr >
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-lastTelTime.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">最近一次通话</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td ><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-callTransfer.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">呼叫转移</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-netTime.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">在网时长</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-sexQuery.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户性别查询</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-ageQuery.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户年龄查询</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
            	<td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        
    </tr>
    <tr >
        <td >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
    </tr>
    
</table>
<!-------------------------------------------第二页--------------------------------------------------------------->
<table width="95%" border="0" cellspacing="0" cellpadding="0" class="left" id="tb-two" style="display:none">
	<tr >
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-belongCity.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户归属省市判断</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td  width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-queryBaseOnimei.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">基于imei+imsi查询用户性别年龄</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-creditScore.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户沃信用分接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-lastTerminalQuery.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">最近终端查询</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-terminalReplFreqScore.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">终端更换频次评分查询</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        
    </tr>
    <tr >
        <td >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
    </tr>
    <tr>
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-6monErlang.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户最近六个月平均通话量评分接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-3monRoamTimes.png"></div></td>
            </tr>
            <tr>
                <td> <div align="center" class="moduleName">用户近三个月漫游通话次数接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png" border="0"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-6monArrearageTimes.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">最近六个月欠费停机次数</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png" border="0"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-arrearageQuery.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">欠费查询接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png" border="0"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-3monAvgFareQuery.png" width="49" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 用户近三个月话费均值查询接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        
    </tr>
    <tr >
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <br>
    </tr>
    <tr >
    	<td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-6monMsgQty.png" width="49" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 用户最近六个月发送短信数量</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-6monAvgFlowScore.png" width="46" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 用户最近六个月平均流量评分接口</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-secCardClear.png" width="46" height="47"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName"> 二次卡清理 </div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-circleScore.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">用户有效交际圈评分</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" class="mdTdel"><table width="100%"  border="0">
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/intrc-contactsVer.png"></div></td>
            </tr>
            <tr>
                <td>
                    <div align="center" class="moduleName">常用联系人验证</div></td>
            </tr>
            <tr>
                <td><div align="center">价格：-元/次</div></td>
            </tr>
            <tr>
                <td><div align="center"><img src="${cxt}/static/image/unicom/botton6.png"></div></td>
            </tr>
        </table></td>
        <td width="20%" ></td>
    </tr>
    <tr >
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
    </tr>
    <tr >
        <td >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
        <td width="20%" >&nbsp;</td>
    </tr>
</table>
<div id="fanyeDiv">
    <!-------------------------------------------分页----------------------------------------------------------------->
    <div id="pageGro" class="cb">
        <div class="pageUp">上一页</div>
        <div class="pageList">
            <ul>
                <li>1</li>
                <li>2</li>
            </ul>
        </div>
        <div class="pageDown">下一页</div>
    </div>
    <!-------------------------------------------END 分页----------------------------------------------------------------->
</div>
<%--<table border="0" cellspacing="0" cellpadding="0" id="tTable" class="left" style="display: none"><tbody><tr></tr></tbody></table>--%>
</body>
    <script>
        function searchModule(keyName){
            //根据关键词隐藏未触发的，展示触发的功能
            console.log("关键词:"+keyName);
            $("#tTable").empty();
            var modules = $(".moduleName");
            var mdName = '';
            var tableEle = $("<table width='95%' border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"tTable\" class=\"left\"></table>");
            var moduleEle = $("<tr></tr>");
            var i = 0;
            modules.each(function () {
                mdName = $.trim($(this).html());

                if(mdName.indexOf(keyName)>=0){
                    //console.log("模块名称:"+mdName);
                    //i++;
                    //if(i<6){
                    console.log($(this).parents(".mdTdel"));
                        moduleEle = moduleEle.append($(this).parents(".mdTdel"));

                    //}
                    // console.log(moduleEle[0]);
                    // if(i==6){
                    //     moduleEle = moduleEle.after($("<tr >\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <br>\n" +
                    //         "    </tr><tr>"));
                    //     moduleEle = moduleEle.after($(this).parents(".mdTdel"));
                    // }else if(i>6&&i<11){
                    //     moduleEle = moduleEle.after($(this).parents(".mdTdel"));
                    // }
                    // else if(i==11){
                    //     moduleEle = moduleEle.after($("<tr >\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <td width=\"20%\" height=\"10\" >&nbsp;</td>\n" +
                    //         "        <br>\n" +
                    //         "    </tr><tr>"));
                    //     //moduleEle = moduleEle.after($(this).parents(".mdTdel"));
                    // }else{
                    //     moduleEle = moduleEle.after($(this).parents(".mdTdel"));
                    // }

                }
            });
            if(moduleEle!=''){
                //moduleEle = $('<tr></tr>').append(moduleEle);

                tableEle.append($(moduleEle));
                $("#fanyeDiv").hide();
                $("#tb-one").hide();
                $("#tb-two").hide();
                $("body").append(tableEle);

                //$("#tTable").show();
            }
        }
    </script>
</aos:html>

<script>
    //打开详情tab页
    function fnaddtab(url, menuname, module_id) {
        window.parent.fnaddtab(url,menuname,module_id,'');
    }

</script>