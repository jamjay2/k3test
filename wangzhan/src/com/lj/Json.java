package com.lj;

import java.awt.Window.Type;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.tribes.tipis.AbstractReplicatedMap.MapOwner;
import org.apache.tomcat.util.http.fileupload.ThresholdingOutputStream;
import org.apache.tomcat.util.net.Nio2Endpoint.Nio2SocketWrapper;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.batch.Main;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
@WebServlet("/json")
public class Json extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String type = req.getParameter("type");
		System.out.println("type" + type);
		if (type.equals("dd")) {
			JSONObject json = new JSONObject();
			Map map = new HashMap<>();
			map.put("Mobile", "dddd");
			map.put("Name", "ManojSarnaik");
			// put some value pairs into the JSON object .
			  
			List list = new ArrayList<>();
			list.add("d");

			JSONArray jsonMembers = new JSONArray();
			//变量对象
			JSONObject member1 = new JSONObject();
			member1.put("itemid", "zhangfan");
			member1.put("productid", "userpass");
			member1.put("email", "10371443@qq.com");
			member1.put("sign_date", "2007-06-12");
			jsonMembers.add(member1);
			  
			//json对象
			json.put("total", 1);
			json.put("rows", jsonMembers);
			   	
		        
		        
			    resp.setContentType("application/json");
		        JSONObject result=JSONObject.fromObject(json);
		        System.out.println(result.toString());
		        resp.getWriter().write(result.toString());
		        
		        req.getSession().setAttribute("bb", "dd");
		}
		  
//	        resp.sendRedirect("jsp/json.jsp");
//	        resp.getOutputStream().write(json.toString().getBytes("UTF-8"));  
//	        resp.setContentType("text/json; charset=UTF-8");  
//	        req.getRequestDispatcher("jsp/json.jsp").forward(req,resp);
	}
	
	
		   public void testMapToJSON(){
		        Map map = new HashMap();  
		        map.put( "name", "json" );  
		        map.put( "bool", Boolean.TRUE );  
		        map.put( "int", new Integer(1) );  
		        map.put( "arr", new String[]{"a","b"} );  
		          
		        JSONObject jsonObject = JSONObject.fromObject( map );  
		        System.out.println( jsonObject );  
	}
	
		   
	private void d() {
		 JSONObject json=new JSONObject();  
		    JSONArray jsonMembers = new JSONArray();  
		    JSONObject member1 = new JSONObject();  
		    member1.put("loginname", "zhangfan");  
		    member1.put("password", "userpass");  
		    member1.put("email","10371443@qq.com");  
		    member1.put("sign_date", "2007-06-12");  
		    jsonMembers.add(member1);
		  
		    JSONObject member2 = new JSONObject();  
		    member2.put("loginname", "zf");  
		    member2.put("password", "userpass");  
		    member2.put("email","8223939@qq.com");  
		    member2.put("sign_date", "2008-07-16");  
		    jsonMembers.add(member2);  
		    json.put("users", jsonMembers);  
		  
		    System.out.println(jsonMembers);
		  

	}
	public static void main(String[] args) {
		
		new Json().d();
	}
}
