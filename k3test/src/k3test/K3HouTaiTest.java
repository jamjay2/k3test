package k3test;
import java.io.File;
import java.nio.charset.Charset;
import java.security.Principal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class K3HouTaiTest {
	private Connection connection;
	//读取数据库
	public void DataBaseTest(){
			  String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
			  String dbURL="jdbc:sqlserver://192.168.16.41:1433;DatabaseName=AIS20151226110538";
			  String userName="k3user";
			  String userPwd="Microvastcw1";
			  try
			  {
			   Class.forName(driverName);
			   connection=DriverManager.getConnection(dbURL,userName,userPwd);
		
			  }
			  catch(Exception e)
			  {
			   e.printStackTrace();
			  }
	} 
	//查询count
	public int getCount(String url){
		PreparedStatement rs;
		int a  = 0;
		try {
			rs = connection.prepareStatement(url);
			 ResultSet resultSet = rs.executeQuery();
			   while (resultSet.next()) {
				    System.out.println("COUNT:" + resultSet.getString("cou"));
				    a = Integer.parseInt(resultSet.getString("cou"));
			   }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return  a;
	}
	
	//查询list
	public int  query(String url){
		   PreparedStatement rs;
		   int i = 0;
		try {
			rs = connection.prepareStatement(url);
			 ResultSet resultSet = rs.executeQuery();
			   while (resultSet.next()) {
//				    System.out.println("COUNT:" + resultSet.getString("cou"));
				   i = Integer.parseInt(resultSet.getString("cou")); 
			   }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
		  
	}
	
	
	//读取csv
	public List   readeCsv(){  
		List mingdan = new ArrayList<>();
	       List<String> dataList=CSVUtils.importCsv(new File("C:/K_3 WISE V14.2.csv"));
	        if(dataList!=null && !dataList.isEmpty()){
	            for(String data : dataList){
//	            	data[0];
//	            	data.indexOf(",");
//	                System.out.println(data.substring(0,data.indexOf(",")));
	                mingdan.add(data.substring(0,data.indexOf(",")));
	            }
	        }
	        return mingdan;
    }  
	
	
	public static void main(String[] args) {
		K3HouTaiTest k3HouTaiTest = new K3HouTaiTest();
		List mingdan = k3HouTaiTest.readeCsv();
		k3HouTaiTest.DataBaseTest();
		Map<String, String> a = new HashMap<>();
		for (int i=0;i<mingdan.size();i++){
			  int count = k3HouTaiTest.query("select COUNT(1) cou From t_Log  where FDescription like '%"+mingdan.get(i)+"%'");
//			  a.put((String)mingdan.get(i), String.valueOf(count));
			  System.out.println(mingdan.get(i)+","+count); 
		}
	}
	
	
	
}
