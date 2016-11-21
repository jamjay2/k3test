<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link href="<%=request.getContextPath()%>/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/themes/default/easyui.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/themes/icon.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.min.1.2.2.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/datagrid-filter.js"></script>
	 <script type="text/javascript">
	 
	 $(document).ready(function(){ 
		 jj();
		 }); 
	 
        function jj(){
/*         	var dg = $('#dg');
        	dg.datagrid();    // create datagrid
        	dg.datagrid('enableFilter');    // enable filter */
        	$('#dg').datagrid({
        	    <%-- url:'<%=request.getContextPath()%>/json?type="ttt"', --%>
        	    url:'<%=request.getContextPath()%>/json?type=ddd',
        	    method: 'get',
        	    columns:[[
        	        {field:'itemid',title:'Item ID',width:50},
        	        {field:'productid',title:'Product',width:100}
        	    ]]
        	});}
        
        function filter(){
        	var dg = $('#dgg').datagrid({
				filterBtnIconCls:'icon-filter'
			});
			dg.datagrid('enableFilter', [{
				field:'listprice',
				type:'numberbox',
				options:{precision:1},
				op:['equal','notequal','less','greater']
			},{
				field:'unitcost',
				type:'numberbox',
				options:{precision:1},
				op:['equal','notequal','less','greater']
			},{
				field:'status',
				type:'combobox',
				options:{
					panelHeight:'auto',
					data:[{value:'',text:'All'},{value:'P',text:'P'},{value:'N',text:'N'}],
					onChange:function(value){
						if (value == ''){
							dg.datagrid('removeFilterRule', 'status');
						} else {
							dg.datagrid('addFilterRule', {
								field: 'status',
								op: 'equal',
								value: value
							});
						}
						dg.datagrid('doFilter');
					}
				}
			}]);
		}
        
    </script>
</head>
<body>
json
<td><%=session.getAttribute("bb") %></td>
    <table id="dg" class="easyui-datagrid" title="DataGrid Selection" style="width:700px;height:250px"
            data-options="singleSelect:true,method:'get'">
        <thead>
            <tr>
                <th data-options="field:'itemid',width:80">Item ID</th>
                <th data-options="field:'productid',width:100">Product</th>
                <th data-options="field:'listprice',width:80,align:'right'">List Price</th>
                <th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
                <th data-options="field:'attr1',width:250">Attribute</th>
                <th data-options="field:'status',width:60,align:'center'">Status</th>
            </tr>
        </thead>
    </table>
    
    <table id="dgg" title="DataGrid" style="width:700px;height:250px" data-options="
				singleSelect:true,
				data:data
			">
		<thead>
			<tr>
				<th data-options="field:'itemid',width:80">Item ID</th>
				<th data-options="field:'productid',width:100">Product</th>
				<th data-options="field:'listprice',width:80,align:'right'">List Price</th>
				<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
				<th data-options="field:'attr1',width:250">Attribute</th>
				<th data-options="field:'status',width:60,align:'center'">Status</th>
			</tr>
		</thead>
	</table>
    
    <button onclick="jj()">按鈕</button>
    <button onclick="filter()">filter</button>
</body>
</html>