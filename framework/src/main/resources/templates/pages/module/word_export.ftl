<#if dataList??>
<#list dataList as data>
	第${data.sn?c}题：【${data.type!}】${data.title!}
<#if (data.xa)??>
		A：${data.xa!}
</#if>
<#if (data.xb)??>
		B：${data.xb!}
</#if>
<#if (data.xc)??>
		C：${data.xc!}
</#if>
<#if (data.xd)??>
		D：${data.xd!}
</#if>
<#if (data.xe)??>
		E：${data.xe!}
</#if>
<#if (data.da)??>
	答案：${data.da!}
	
</#if>
</#list>
</#if>