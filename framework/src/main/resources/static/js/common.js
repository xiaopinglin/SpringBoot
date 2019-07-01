/**
 * 获取表单id的所有input select textarea值组成json串
 * 
 * @param id
 * @returns {String}
 */
function getFieldJsonData(id) {
	var url = "{";
	$("#" + id + " input").each(function() {
		if ($(this).attr("type") == "button" || $(this).attr("type") == "submit") {
			// 不需操作
		} else if ($(this).attr("type") == 'radio' || $(this).attr("type") == 'checkbox') {
			if ($(this).attr("checked") == "checked") {
				if ($(this).attr("name")) {
					url = url + "\"" + $(this).attr("name") + "\":\"" + $(this).val()+"\",";
				}
			}
		} else {
			if ($(this).attr("name")) {
				url = url + "\"" +  $(this).attr("name") + "\":\"" + $(this).val()+"\",";
			}
		}
	});
	$("#" + id + " select").each(function() {
		if ($(this).attr("name")) {
			url = url + "\"" +  $(this).attr("name") + "\":\"" + $(this).val()+"\",";
		}
	});

	$("#" + id + " textarea").each(function() {
		if ($(this).attr("name")) {
			url = url+ "\"" +  $(this).attr("name") +"\":\"" + $(this).val()+"\",";
		}
	});
	
	url = url.substr(0,url.length-1)+"}";
	
	return eval('(' + url + ')');
}
/**
 * 设置Cookie
 * @param name
 * @param value
 * @param Days
 */
function setCookie(name,value,Days){
	var exp = new Date();
	exp.setTime(exp.getTime() + Days*24*60*60);
	document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}

/**
 * 获取Cookie
 * @param name
 * @returns
 */
function getCookie(name){
	var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
	if(arr=document.cookie.match(reg)){
		return unescape(arr[2]);
	}
	return "";
}