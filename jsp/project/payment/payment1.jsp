<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>
<aos:html title="订单确认" base="http" lib="jquery">
<head>
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common1.css" type="text/css" />
    <link rel="stylesheet" href="${cxt}/static/css/unicom/common.css" type="text/css" />
    <script src="${cxt}/static/js/unicom/clock.js" type="text/javascript"></script>
    <!--主要样式-->
    <script type="text/javascript" src="${cxt}/static/css/unicom/jquery-1.8.3.min.js"></script>
</head>
<body class="body_bg">
<%--<table width="95%" border="0" cellspacing="0" cellpadding="0" class="left title_bg">
    <tr>
        <td width="53%" >
            <table border="0" cellspacing="0" cellpadding="0" width="350" >
                <tr>
                    <td width="120" class="brue_title"><a href="#" target="mainFrame" class="brue_titlelink">订单确认</a></td>
                    <td width="120" class="white_title"><a href="#" target="mainFrame" class="white_titlelink">支付确认</a></td>
                    <td width="120" class="white_title"><a href="#" target="mainFrame" class="white_titlelink">支付完成</a></td>


                </tr>
            </table>
        </td>
        <td width="47%">&nbsp;</td>
    </tr>
</table>--%>

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
                            <td align="right"><strong>订单总额：<span class="style1">￥ 280.00</span></strong></td>
                        </tr>
                    </table> </td>
                </tr>
                <tr>
                    <td height="31" valign="top" class="MainRightTab_td1"><table width="100%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#D7D3D8" bgcolor="#DEDEDE">
                        <tr class="font_weight" height="25">
                            <td width="33%" align="center">产品名称</td>
                            <td width="33%" align="center">数量</td>
                            <td width="33%" align="center">价格（元）</td>
                        </tr>
                    </table>          <div align="left">          </td>
                </tr>
                <tr>
                    <td height="16" valign="middle" class="MainRightTab_td1"><table width="100%"  border="0" cellspacing="0" cellpadding="0">
                        <tr class="font_weight">
                            <td width="33%" align="center">三要素核验</td>
                            <td width="33%" align="center">1</td>
                            <td width="33%" align="center" >${price}</td>
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
                    <td height="8" align="right" valign="top" class="MainRightTab_td1"> <strong><span class="style1">应付金额： ￥ 280.00</span></strong></td>
                </tr>
                <tr>
                    <td height="8" align="center" valign="top" class="MainRightTab_td1">
                        <a href="javascript:void(0);"  class="button"
                           onclick="fnaddtab('mainService.initPayment2','支付确认','payment2')">立即支付</a>
                    </td>
                </tr>
            </table></td>
        </tr>
    </table>
</body>
</aos:html>

<script>
    //打开详情tab页
    function fnaddtab(url, menuname, module_id) {
        window.parent.fnaddtab(url,menuname,module_id,'');
    }

</script>