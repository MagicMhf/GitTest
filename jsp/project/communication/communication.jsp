<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="通信评分" base="http" lib="jquery">
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
    </tr>
</table>
</body>
    <script>
    </script>
</aos:html>

<script>
    //打开详情tab页
    function fnaddtab(url, menuname, module_id) {
        window.parent.fnaddtab(url,menuname,module_id,'');
    }

</script>