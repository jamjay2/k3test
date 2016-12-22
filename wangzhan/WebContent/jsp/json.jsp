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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/themes/gray/datagrid.css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.easyui.min.1.2.2.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/js/datagrid-filter.js"></script>
	 <script type="text/javascript" >
	 
	 $(document).ready(function(){ 
		 jj();
		 }); 
	 
        function jj(){
/*         	var dg = $('#dg');
        	dg.datagrid();    // create datagrid
        	dg.datagrid('enableFilter');    // enable filter */
        	$('#dg').datagrid({
        	    <%-- url:'<%=request.getContextPath()%>/json?type="ttt"', --%>
        	    url:'<%=request.getContextPath()%>/json?type=dd',
        	    method: 'get',
        	    columns:[[
        	        {field:'itemid',title:'Item ID',width:50},
        	        {field:'productid',title:'Product',width:100}
        	    ]]
        	});}
        
		var data = [
		           	{"productid":"FI-SW-01","productname":"Koi","unitcost":10.00,"status":"P","listprice":36.50,"attr1":"Large","itemid":"EST-1"},
		        	{"productid":"K9-DL-01","productname":"Dalmation","unitcost":12.00,"status":"P","listprice":18.50,"attr1":"Spotted Adult Female","itemid":"EST-10"},
		        	{"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":38.50,"attr1":"Venomless","itemid":"EST-11"},
		        	{"productid":"RP-SN-01","productname":"Rattlesnake","unitcost":12.00,"status":"P","listprice":26.50,"attr1":"Rattleless","itemid":"EST-12"},
		        	{"productid":"RP-LI-02","productname":"Iguana","unitcost":12.00,"status":"P","listprice":35.50,"attr1":"Green Adult","itemid":"EST-13"},
		        	{"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"N","listprice":158.50,"attr1":"Tailless","itemid":"EST-14"},
		        	{"productid":"FL-DSH-01","productname":"Manx","unitcost":12.00,"status":"P","listprice":83.50,"attr1":"With tail","itemid":"EST-15"},
		        	{"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"P","listprice":23.50,"attr1":"Adult Female","itemid":"EST-16"},
		        	{"productid":"FL-DLH-02","productname":"Persian","unitcost":12.00,"status":"N","listprice":89.50,"attr1":"Adult Male","itemid":"EST-17"},
		        	{"productid":"AV-CB-01","productname":"Amazon Parrot","unitcost":92.00,"status":"N","listprice":63.50,"attr1":"Adult Male","itemid":"EST-18"}
		        ];
       
        $(function(){
			var dg = $('#dggg').datagrid({
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
		});
    </script>
</head>
<body>
json
<td><%=session.getAttribute("bb") %></td>
     <div id="toolbar">
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="javascript:$('#dg').edatagrid('addRow')">New</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="javascript:$('#dg').edatagrid('destroyRow')">Destroy</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" plain="true" onclick="javascript:$('#dg').edatagrid('saveRow')">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-undo" plain="true" onclick="javascript:$('#dg').edatagrid('cancelRow')">Cancel</a>
    </div>
    
     <table id="dg" title="My Users" style="width:700px;height:250px"
            toolbar="#toolbar" pagination="true" idField="id"
            rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
            <tr>
                <th field="firstname" width="50" editor="{type:'validatebox',options:{required:true}}">First Name</th>
                <th field="lastname" width="50" editor="{type:'validatebox',options:{required:true}}">Last Name</th>
                <th field="phone" width="50" editor="{type:'validatebox',options:{required:true}}">Phone</th>
                <th field="email" width="50" editor="{type:'validatebox',options:{required:true,validType:'email'}}">Email</th>
            </tr>
        </thead>
    </table>
    
    	<table id="dggg" title="DataGrid" style="width:700px;height:250px" data-options="
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