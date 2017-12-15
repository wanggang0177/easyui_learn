<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 引入JQuery -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/jquery.min.js"></script>
<!-- 引入EasyUI -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/jquery.easyui.min.js"></script>
<!-- 引入EasyUI的中文国际化js，让EasyUI支持中文 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jquery-easyui-1.4.5/locale/easyui-lang-zh_CN.js"></script>
<!-- 引入EasyUI的样式文件-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.5/themes/default/easyui.css"
	type="text/css" />
<!-- 引入EasyUI的图标样式文件-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/jquery-easyui-1.4.5/themes/icon.css"
	type="text/css" />
<!-- 引入自定义js-->	
<script type="text/javascript"
	src="${pageContext.request.contextPath}/myjs/common.js"></script>
</head>

<script type="text/javascript">
	var rowsData = [ {
		"firstname" : 1,
		"lastname" : "1001",
		"phone" : "药库管理",
		"email" : "\\icon\\92.png"
	}, {
		"firstname" : 2,
		"lastname" : "1002",
		"phone" : "药房管理",
		"email" : "\\icon\\93.png"
	}, {
		"firstname" : 3,
		"lastname" : "2001",
		"phone" : "门诊挂号",
		"email" : "\\icon\\18.png"
	}, {
		"firstname" : 4,
		"lastname" : "2002",
		"phone" : "门诊划收",
		"email" : "\\icon\\hjsf.png"
	}, {
		"firstname" : 41,
		"lastname" : "10056",
		"phone" : "医技科室",
		"email" : "\\icon\\90.png"
	} ];
</script>


<body class="easyui-layout">
	<div data-options="region:'north'" style="height: 50px">
		<img src="images/11.jpg" />EasyUIDemo
	</div>

	<div data-options="region:'south',split:true" style="height: 50px;">
	</div>

	<div data-options="region:'east',split:true" title="East"
		style="width: 100px;"></div>

	<div data-options="region:'west',split:true" title="West"
		style="width: 200px;">

		<div class="easyui-accordion" data-options="fit:true,border:false">
			<div title="Title1" data-options="selected:true"
				style="padding: 10px;">
				<div style="margin: 5px">
					<ul class="easyui-tree">
						<li><span>基础设置</span>
							<ul>
								<li data-options="state:'closed'"><span>Photos</span>
									<ul>
										<li><span>Friend</span></li>
										<li><span>Wife</span></li>
										<li><span>Company</span></li>
									</ul></li>
								<li data-options="state:'closed'"><span>Program
										Files</span>
									<ul>
										<li>Intel</li>
										<li>Java</li>
										<li>Microsoft Office</li>
										<li>Games</li>
									</ul></li>
								<li>index.html</li>
								<li>about.html</li>
								<li>welcome.html</li>
							</ul></li>
					</ul>
					<ul class="easyui-tree">
						<li data-options="state:'closed'"><span>系统设置</span>
							<ul>
								<li data-options="state:'closed'"><span>Photos</span>
									<ul>
										<li><span>Friend</span></li>
										<li><span>Wife</span></li>
										<li><span>Company</span></li>
									</ul></li>
								<li data-options="state:'closed'"><span>Program
										Files</span>
									<ul>
										<li>Intel</li>
										<li>Java</li>
										<li>Microsoft Office</li>
										<li>Games</li>
									</ul></li>
								<li>index.html</li>
								<li>about.html</li>
								<li>welcome.html</li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div title="Title2" style="padding: 10px;">content2</div>
			<div title="Title3" style="padding: 10px">content3</div>
		</div>


	</div>

	<div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'">
		<div id="tabs" class="easyui-tabs" style="width: 100%; height: 250px" data-options="tools:'#tab-tools'">
			<div title="主页" style="padding: 10px">
				<p style="font-size: 14px">jQuery EasyUI framework helps you
					build your web pages easily.</p>
				<ul>
					<li>easyui is a collection of user-interface plugin based on
						jQuery.</li>
					<li>easyui provides essential functionality for building
						modem, interactive, javascript applications.</li>
					<li>using easyui you don't need to write many javascript code,
						you usually defines user-interface by writing some HTML markup.</li>
					<li>complete framework for HTML5 web page.</li>
					<li>easyui save your time and scales while developing your
						products.</li>
					<li>easyui is very easy but powerful.</li>
				</ul>
			</div>
			<div title="My Documents" style="padding: 10px">
				<form id="ff" method="post">
					<table cellpadding="5">
						<tr>
							<td>Name:</td>
							<td><input class="easyui-textbox" type="text" name="name"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><input class="easyui-textbox" type="text" name="email"
								data-options="required:true,validType:'email'"></input></td>
						</tr>
						<tr>
							<td>Subject:</td>
							<td><input class="easyui-textbox" type="text" name="subject"
								data-options="required:true"></input></td>
						</tr>
						<tr>
							<td>Message:</td>
							<td><input class="easyui-textbox" name="message"
								data-options="multiline:true" style="height: 60px"></input></td>
						</tr>
						<tr>
							<td>Language:</td>
							<td><select class="easyui-combobox" name="language"><option
										value="ar">Arabic</option>
									<option value="bg">Bulgarian</option>
									<option value="ca">Catalan</option>
									<option value="zh-cht">Chinese Traditional</option>
									<option value="cs">Czech</option>
									<option value="da">Danish</option>
									<option value="nl">Dutch</option>
									<option value="en" selected="selected">English</option>
									<option value="et">Estonian</option>
									<option value="fi">Finnish</option>
									<option value="fr">French</option>
									<option value="de">German</option>
									<option value="el">Greek</option>
									<option value="ht">Haitian Creole</option>
									<option value="he">Hebrew</option>
									<option value="hi">Hindi</option>
									<option value="mww">Hmong Daw</option>
									<option value="hu">Hungarian</option>
									<option value="id">Indonesian</option>
									<option value="it">Italian</option>
									<option value="ja">Japanese</option>
									<option value="ko">Korean</option>
									<option value="lv">Latvian</option>
									<option value="lt">Lithuanian</option>
									<option value="no">Norwegian</option>
									<option value="fa">Persian</option>
									<option value="pl">Polish</option>
									<option value="pt">Portuguese</option>
									<option value="ro">Romanian</option>
									<option value="ru">Russian</option>
									<option value="sk">Slovak</option>
									<option value="sl">Slovenian</option>
									<option value="es">Spanish</option>
									<option value="sv">Swedish</option>
									<option value="th">Thai</option>
									<option value="tr">Turkish</option>
									<option value="uk">Ukrainian</option>
									<option value="vi">Vietnamese</option></select></td>
						</tr>
					</table>
				</form>
				<div style="text-align: center; padding: 5px">
					<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a> 
					<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
				</div>
			</div>
			<div title="Help" data-options="iconCls:'icon-help',closable:true"
				style="padding: 10px">This is the help content.
			</div>
		</div>
		<!-- 关联tools -->
		<div id="tab-tools">
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addPanel()"></a>
			<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" onclick="removePanel()"></a>
		</div>
			
		 <!-- 右键menu模板 -->		
		 <div id="mm" class="easyui-menu" style="width: 150px;">
	         <div id="refresh" data-options="iconCls:'icon-arrow_refresh'">刷新</div>
	         <div class="menu-sep"></div>
	         <div id="close">关闭</div>
	         <div id="closeall">全部关闭</div>
	         <div id="closeother">除此之外全部关闭</div>
	         <div class="menu-sep"></div>
	         <div id="closeright">当前页右侧全部关闭</div>
	         <div id="closeleft">当前页左侧全部关闭</div>
	         <div class="menu-sep"></div>
	         <div id="exit">退出</div>
     	 </div>


		<div id="dlg" class="easyui-dialog" title="dialog"
			style="width: 250px; height: 120px; padding: 10px"
			data-options="
                  iconCls: 'icon-save',
                  buttons: [{
                      text:'Ok',
                      iconCls:'icon-ok',
                      handler:function(){
                          alert('ok');
                          $('#dlg').dialog('close')
                      }
                  },{
                     text:'Cancel',
                     handler:function(){
                         alert('cancel');;
                     }
                 }]
             ">
			确认提交吗？
		 </div>

		<script type="text/javascript">
			$(function() {
				var tabs = $('#tabs').tabs().tabs('tabs');
				for (var i = 0; i < tabs.length; i++) {
					tabs[i].panel('options').tab.unbind().bind('mouseenter', {
						index : i
					}, function(e) {
						$('#tabs').tabs('select', e.data.index);
					});
				}
			});
			
			var index = 0;

			function addPanel(){
				index++;
				$('#tabs').tabs('add',{
					title: 'Tab'+index,
					content: '<div style="padding:10px">Content'+index+'</div>',
					closable: true
				});
			}
			function removePanel(){
				var tab = $('#tabs').tabs('getSelected');
				if (tab){
					var index = $('#tabs').tabs('getTabIndex', tab);
					$('#tabs').tabs('close', index);
				}
			}
			
			$(function(){
				$(".tabs-inner").bind('contextmenu',function(e){
					e.preventDefault();
					$('#mm').menu('show', {
						left: e.pageX,
						top: e.pageY
					});
				});
			});
			
			
			$(function () {
				$('#dlg').dialog('close')
			})
			
			
			function submitForm(){
				$('#dlg').dialog('open')
			}
			function clearForm(){
				$('#ff').form('clear');
			}
		</script>
	</div>
</body>
</html>