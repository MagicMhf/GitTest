<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="风控评分" base="http" lib="jquery">
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
            <%-- <tr>
                <td><div align="center">
                	<a href="javascript:void(0);" onclick="fnaddtab('mainService.initWo','沃信用','wo')">
                            <img src="${cxt}/static/image/unicom/botton6.png" border="0"></a>
                </div></td>
            </tr> --%>
        </table></td>
        <td width="20%" class="mdTdel"></td>
        <td width="20%" class="mdTdel"></td>
        <td width="20%" class="mdTdel"></td>
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