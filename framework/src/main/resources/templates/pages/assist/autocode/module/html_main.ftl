<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${moduleName!}</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${ctx}/css/common.css"  media="all">
</head>
<body>
<div class="layui-fluid">
    <div class="layui-elem-quote">
		<div class="layui-breadcrumb">
			<a><i class="layui-icon layui-icon-home"></i>首页</a>
			<a><i class="layui-icon layui-icon-set"></i>基础模块</a>
			<a><i class="layui-icon layui-icon-location"></i>${moduleName!}</a>
	    </div>
    </div>
    <fieldset class="layui-elem-field">
        <legend>查询条件</legend>
        <form id="form" class="layui-form" action="">
	        <div class="layui-row">
	        	<!--查询项-->
		        <#if changequeryCulmun??>
				<#if model_column??>
				<#list model_column as model>
			 	<#if changequeryCulmun?index_of(model.changecolumnCode!) != -1> 
				<div class="layui-col-md3">
		            <div class="layui-form-item">
			            <label class="layui-form-label">${model.columnName!}</label>
			            <div class="layui-input-block">
			                <input type="text" name="${model.changecolumnCode!}" class="layui-input">
			            </div>
			        </div>
		        </div>		
				</#if>
				</#list>
				</#if>
				</#if>
		    </div>
		    <!-- 操作按钮 -->
		    <div class="layui-row">
    			<div class="layui-col-md12">
    				<div class="layui-btn-pull-right">
    					<a class="layui-btn" lay-submit lay-filter="queryBtn">查询</a>
		                <a class="layui-btn layui-btn-normal" lay-submit lay-filter="addBtn">新增</a>
		                <a class="layui-btn layui-btn-warm" lay-submit lay-filter="resetBtn">重置</a>
    				</div>
		        </div>
    		</div>
	    </form>
    </fieldset>
    <table class="layui-hide" id="TableData" lay-filter="tableFilter"></table>
</div>
<!-- layui -->
<script type="text/javascript" src="../../../layui/layui.js"></script>
<!-- jq -->
<script type="text/javascript" src="../../../js/jquery-3.3.1.min.js"></script>
<script type="text/html" id="tableRowNumTpl">
    {{ d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="tableRowOperationTpl">
	<a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
	<a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
</script>
<script>
    layui.use(['element','form','table'], function(){
    	var element = layui.element;
    	var form = layui.form;
        var table = layui.table;
        table.render({
        	id: 'id',
            elem: '#TableData',
            url:'/${moduleMath?uncap_first}/${ChangetableCode?uncap_first}/list',
            height:'full-228',
            loading:true,
            method:'post',
            done:function(){
     	       	layer.closeAll("loading");
            },
            cols: [[
				{title:'序号',width:70,align:'center',fixed:true,templet:'#tableRowNumTpl'},
				<#if changeListCulmun??>
				<#if model_column??>
				<#list model_column as model>
			 	<#if changeListCulmun?index_of(model.changecolumnCode!) != -1> 
				{field:'${model.changecolumnCode!}', title:'${model.columnName!}', width:150,align:'center'},
				</#if>
				</#list>
				</#if>
				</#if>
				{fixed:'right',title: '操作',width:120,align:'center',toolbar:'#tableRowOperationTpl'}
            ]],
            page: true
        });
        form.on('submit(queryBtn)',function (data) {
        	layer.load(3, {shade: [0.3, '#000000']});
        	table.reload('id',{
	            where:data.field || {}
	        });
        });
        form.on('submit(addBtn)',function (data) {
        	layer.open({
	            type: 2,
	            title:['<b>新增${moduleName!}</b>','font-size:15px;text-align:left;'],	
	            content: ['/${moduleMath?uncap_first}/${ChangetableCode?uncap_first}/edit?id=&cmd=A', 'yes'],
	            area: ['95%', '90%'],
	            btnAlign: 'c',
	            anim: 2,
	            end:function(){
	            	table.reload('id',{
	    	            where:data.field || {}
	    	        });
	            }
	        });
        });
        form.on('submit(resetBtn)',function (data) {
        	document.getElementById("form").reset();
        });
        table.on('tool(tableFilter)',function (obj) {
	        var event=obj.event;
			if(event == "edit"){
				var data=obj.data;
				layer.open({
		            type: 2,
		            title:['<b>编辑${moduleName!}</b>','font-size:15px;text-align:left;'],	
		            content: ['/${moduleMath?uncap_first}/${ChangetableCode?uncap_first}/edit?cmd=U&id='+data.id, 'yes'],
		            area: ['95%', '90%'],
		            btnAlign: 'c',
		            anim: 2,
		            end:function(){
		            	table.reload('id',{
		    	            where:data.field || {}
		    	        });
		            }
		        });
			}else if(event == "del"){
				var data=obj.data;
				layer.confirm('确认删除吗？',function (index) {
					var index = layer.load(3, {shade: [0.3, '#000000']});
					$.ajax({
		        		url : '/${moduleMath?uncap_first}/${ChangetableCode?uncap_first}/del',
		    			data:{"id":data.id},
		    			type:'post',
		    			async:false,
		    			success:function (result) {
		    				layer.close(index);
		    				if(result.success){
		    					layer.msg("删除成功", {icon: 6});
		    					table.reload('id',{
		    	    	            where:data.field || {}
		    	    	        });
		    			 	}else{
		    		        	layer.msg("删除失败："+ result.msg, {icon: 5});
		    			 	}
		    			},
		    			error: function (XMLHttpRequest, textStatus, errorThrown) {
		    				layer.close(index);
		    			}
		    		});
		        });
			}
	    });
    });
    
</script>
</body>
</html>