<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="号码风险" base="http" lib="jquery">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <!--主要样式-->
    <link rel="stylesheet" type="text/css" href="${cxt}/static/css/unicom/pageGroup.css"/>
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${cxt}/static/css/unicom/pageGroup.js"></script>
    <%--<style>
        .mdTdel{float:left}
    </style>--%>
</head>
<body class="body_bg">
<table width="95%" border="0" cellspacing="0" cellpadding="0" class="left" id="tb-one">
    <tr>
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
        </table></td><br>
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
    </tr>
    <tr >
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
        <td width="20%" height="10" >&nbsp;</td>
    </tr>
    <tr>
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
        <td  width="20%" class="mdTdel"></td>
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