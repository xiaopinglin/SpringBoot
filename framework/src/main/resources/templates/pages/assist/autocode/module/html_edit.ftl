<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="renderer" content="webkit" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${ctx}/layui/css/layui.css"  media="all">
  	<link rel="stylesheet" href="${ctx}/css/common.css"  media="all">
</head>
<body>
<div class="layui-fluid">
	<form id="editForm" method="post" class="layui-form" lay-filter="form">
		<div id="form_data" style="overflow-y: auto;">
			<div class="layui-row">
			<#if changeEditCulmun??>
			<#if model_column??>
			<#list model_column as model>
		 	<#if changeEditCulmun?index_of(model.changecolumnCode!) != -1> 
				<div class="layui-col-md6">
	      			<div class="layui-form-item">
						<label class="layui-form-label">${model.columnName!}</label>
						<div class="layui-input-block">
							<input type="text" name="${model.changecolumnCode!}" class="layui-input" lay-verify="required">
							<span class="layui-input-required">*</span>
						</div>
					</div>
	    		</div>
			</#if>
			</#list>
			</#if>
			</#if>
	  		</div>
		</div>	
		<div id="from_btn" class="layui-row layui-form-btn">
			<div class="layui-col-md12">
				<a id="saveBtn" class="layui-btn" lay-submit lay-filter="saveBtn">提交</a>
				<a id="closeBtn" class="layui-btn layui-btn-danger">关闭</a>
			</div>
		</div>
	</form>
</div>
<!-- layui -->
<script type="text/javascript" src="../../../layui/layui.js"></script>
<!-- jq -->
<script type="text/javascript" src="../../../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

	layui.use('form', function(){
	    var form = layui.form;

	  	//表单初始赋值
        form.val('form', {
        <#if changeEditCulmun??>
		<#if model_column??>
		<#list model_column as model>
	 	<#if changeEditCulmun?index_of(model.changecolumnCode!) != -1> 
			"${model.changecolumnCode!}" : "<#noparse>${</#noparse>${ChangetableCode?uncap_first}.${model.changecolumnCode!}<#noparse>!}</#noparse>"<#if model_has_next>,</#if>
		</#if>
		</#list>
		</#if>
		</#if>    
        });
        form.on('submit(saveBtn)',function (data) {
        	var index = layer.load(3, {shade: [0.3, '#000000']});
       		$.ajax({
           		url : '/ass/autocode/save',
       			data:{"data":JSON.stringify(data.field),"cmd":"${cmd!}"}, 
       			type:'post',
       			async:false,
       			success:function (result) {
       				layer.close(index);
       				if(result.success){
       					layer.msg("提交成功", {icon: 6});
       					parent.layer.close(parent.layer.getFrameIndex(window.name));
       			 	}else{
       		        	layer.msg("提交失败："+ result.msg, {icon: 5});
       			 	}
       			},
       			error: function (XMLHttpRequest, textStatus, errorThrown) {
       				layer.close(index);
       			}
       		});	
        });
	});
	
	$(function(){
		// 自适应高度
		$(window).resize();
		
		$("#closeBtn").click(function(){
	        parent.layer.close(parent.layer.getFrameIndex(window.name));
		});
	});
	
	//自动缩放
	$(window).resize(function() {
		$('#form_data').height($(window).height() - $('#from_btn').height()-45);
	});
</script>
</body>
</html>