<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="数据调用" base="http" lib="ext">
	<aos:body>
		<div id="div_vercode" class="x-hidden " align="center">
			<span>剩余次数:</span><span style="color:red">${ramin_num}</span>
		</div>
	</aos:body>
</aos:html>

<aos:onready>
	<aos:viewport layout="fit">
	    <%-- 这是一个垂直盒子布局的例子 --%>
		<aos:panel border="false">
			<aos:layout type="vbox" align="stretch" />
			<aos:panel layout="fit">
				<aos:formpanel id="f_upload" layout="column" labelWidth="70" header="false" border="false">
					<aos:fieldset title="文件上传" labelWidth="70" columnWidth="1" border="true" contentEl="div_vercode">
						<aos:button onclick="download_template" text="下载模板" tooltip="下载模板" columnWidth="0.2"/>
						<aos:filefield id="client_file" name="the_file" fieldLabel="" allowBlank="false" columnWidth="0.25"/>
						<aos:button onclick="importFile" text="导入文件" tooltip="导入文件" columnWidth="0.2"/>
					</aos:fieldset>
				</aos:formpanel>
			</aos:panel>
			<aos:panel>
			    <%-- 这是一个水平盒子布局的例子 --%>
				<aos:layout type="hbox" align="stretch" />
				<aos:formpanel id="status_form" layout="column" labelWidth="70" header="false" border="true" flex="1" margin="5" padding="5 0 0 5">
					<aos:docked forceBoder="1 1 0 1">
						<aos:dockeditem xtype="tbtext" text="文件信息" />
					</aos:docked>
					<aos:textfield name="upload_id" fieldLabel="上传id" value="" readOnly="true" columnWidth="1" />
					<aos:textfield name="upload_date" fieldLabel="上传时间" value="" readOnly="true" columnWidth="1" />
					<aos:textfield name="file_name" fieldLabel="文件名" value="" readOnly="true" columnWidth="1" />
					<%-- <aos:textfield name="status" fieldLabel="状态" value="" readOnly="true" columnWidth="1" /> --%>
				</aos:formpanel>
			</aos:panel>
			<aos:panel layout="fit">
				<aos:formpanel id="f_query" layout="column" labelWidth="70" header="false" border="false">
					<aos:docked forceBoder="1 0 1 0">
						<aos:dockeditem xtype="tbtext" text="查询条件" />
					</aos:docked>
					<aos:textfield name="file_name" fieldLabel="文件名" columnWidth="0.25" />
					<aos:datefield name="date_time_s" fieldLabel="调用时间起" columnWidth="0.25" />
					<aos:datefield name="date_time_e" fieldLabel="调用时间止" columnWidth="0.25" />
					<aos:docked dock="bottom" ui="footer" margin="0 0 8 0">
						<aos:dockeditem xtype="tbfill" />
						<aos:dockeditem xtype="button" text="查询" onclick="g_thirdele_query" icon="query.png" />
						<aos:dockeditem xtype="button" text="重置" onclick="AOS.reset(f_query);" icon="refresh.png" />
						<aos:dockeditem xtype="tbfill" />
					</aos:docked>
				</aos:formpanel>
			</aos:panel>
			<aos:panel flex="1" layout="fit">
				<aos:gridpanel id="g_thirdele" url="mainService.listSanCall" onrender="g_thirdele_query">
					<aos:docked forceBoder="1 0 1 0">
						<aos:dockeditem xtype="tbtext" text="三要素调用信息" />
					</aos:docked>
					<aos:column type="rowno" />
						<aos:column header="上传id" dataIndex="id" hidden="true" />
						<aos:column header="文件名" dataIndex="file_name" width="90" />
						<aos:column header="调用时间" dataIndex="date_time"  width="60" />
						<aos:column header="条数" dataIndex="num" width="40" />
						<aos:column header="数据状态" dataIndex="status_zh" width="80" />
						<aos:column header="" dataIndex="status" hidden="true" />
						<aos:column header="操作" rendererFn="fn_button_op" type="number" width="100"  />
				</aos:gridpanel>
				
			</aos:panel>

		</aos:panel>

	</aos:viewport>

	<script type="text/javascript">
		//加载组织结构表格数据
		function g_thirdele_query() {
			var params = AOS.getValue('f_query');
			g_thirdele_store.getProxy().extraParams = params;
			g_thirdele_store.loadPage(1);
		}


        //下载模板
        function download_template() {
            //juid需要再这个页面的初始化方法中赋值,这里才引用得到
            //httpModel.setAttribute("juid", httpModel.getInDto().getString("juid"));
            AOS.file('do.jhtml?router=mainService.downloadsimpleTemplate&juid=${juid}');
        }
        //导入文件
		function importFile() {
            if(!f_upload.isValid()) {
                Ext.Msg.alert("系统提示","请填写必填项！");
                return;
            }
            f_upload.getForm().fileUpload = true;
            f_upload.getForm().submit({
                url:'doUpload.jhtml?router=mainService.doUploadSimpleThirdele&juid=${juid}&ramin_num=${ramin_num}',//'upload.jhtml?juid=${juid}'
                waitMsg:'文件上传中...',
                success: function(form, action) {
                    console.log(action.result);
                    //console.log(form.responseText);
                    AOS.setValues(status_form,action.result);
                    AOS.info(action.result.appmsg);
                    g_thirdele_store.reload();
                },
                failure: function(form, action) {
                    console.log(action.result);
                    console.log(form.responseText);
                    AOS.info(action.result.appmsg);
                }
            });
        }

        //按钮列转换-下载
        function fn_button_op(value, metaData, record) {		    
		    var statu = record.data.status;
		    var id=record.data.id;
		    var file_name=record.data.file_name;
		    //console.log(record.data.file_name);
		    if(statu == '2'){
		    	return '<input type="button" value="下载" class="cbtn_danger" onclick="fn_export_excel(\''+id+'\',\''+file_name+'\')" />';
			}else {
                return '<input type="button" value="下载" class="cbtn_danger" onclick="fn_download_alert();" />';
			}
        }
	</script>
</aos:onready>
<script>
//导出excel
function fn_export_excel(id,file_name){
	//juid需要再这个页面的初始化方法中赋值,这里才引用得到
	AOS.file('do.jhtml?router=mainService.doDownloadSimpleThirdele&id='+id+'&juid=${juid}');
}
    function fn_download_alert() {
        AOS.info("数据正在调用，请稍后再试！");
    }
</script>