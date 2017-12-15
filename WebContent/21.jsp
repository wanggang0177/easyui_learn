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
</head>

<script type="text/javascript">
	
	var rowsData = [
		{"firstname":1,"lastname":"1001","phone":"药库管理","email":"\\icon\\92.png"},
		{"firstname":2,"lastname":"1002","phone":"药房管理","email":"\\icon\\93.png"},
		{"firstname":3,"lastname":"2001","phone":"门诊挂号","email":"\\icon\\18.png"},
		{"firstname":4,"lastname":"2002","phone":"门诊划收","email":"\\icon\\hjsf.png"},
		{"firstname":41,"lastname":"10056","phone":"医技科室","email":"\\icon\\90.png"}
		];
	
	
	
    function newUser(){
    	$('#dlg').dialog('open').dialog('setTitle','New User');
    	$('#fm').form('clear');
    	url = 'save_user.php';
    }
	
    function destroyUser(){
    	var row = $('#dg').datagrid('getSelected');
    	if (row){
    		$.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
    			if (r){
    				$.post('destroy_user.php',{id:row.id},function(result){
    					if (result.success){
    						$('#dg').datagrid('reload');	// reload the user data
    					} else {
    						$.messager.show({	// show error message
    							title: 'Error',
    							msg: result.errorMsg
    						});
    					}
    				},'json');
    			}
    		});
    	}
    }
    
</script>


<body>
<!-- easyui-datagrid -->
	<table id="dg" title="My Users" class="easyui-datagrid"
		data-options="rownumbers:true,singleSelect:true,data:rowsData"
		style="width: 550px; height: 250px"
		toolbar="#toolbar" 
		rownumbers="true" 
		fitColumns="true"
		singleSelect="true">
		<thead>
			<tr>
				<th field="firstname" width="50">First Name</th>
				<th field="lastname" width="50">Last Name</th>
				<th field="phone" width="50">Phone</th>
				<th field="email" width="50">Email</th>
			</tr>
		</thead>
	</table>
<!-- toolbar="#toolbar" 引用 -->	
	<div id="toolbar">
		<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true"
			onclick="newUser()">New User
		</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true"
			onclick="editUser()">Edit User
		</a> 
		<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true"
			onclick="destroyUser()">Remove User
		</a>
	</div>
	
	
	
	
	
	    <div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
    		closed="true" buttons="#dlg-buttons">
    	<div class="ftitle">User Information</div>
    	<form id="fm" method="post">
    		<div class="fitem">
    			<label>First Name:</label>
    			<input name="firstname" class="easyui-validatebox" required="true">
    		</div>
    		<div class="fitem">
    			<label>Last Name:</label>
    			<input name="lastname" class="easyui-validatebox" required="true">
    		</div>
    		<div class="fitem">
    			<label>Phone:</label>
    			<input name="phone">
    		</div>
    		<div class="fitem">
    			<label>Email:</label>
    			<input name="email" class="easyui-validatebox" validType="email">
    		</div>
    	</form>
    </div>
    <div id="dlg-buttons">
    	<a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
    	<a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
    </div>
	
	
</body>
</html>