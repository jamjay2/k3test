package k3test;


public final  class Test {
//	static{
//		try {
//			Class.forName("Test");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//	}
	static {
		System.out.println("abc");
	}
	
	void s(int i){
		System.out.println("int"+i);
	}
	
	void s(Long i){
		System.out.println("Long"+i);
	}
	
	private String dd()  {return new StringBuilder().append("d").toString()  ; }
	
	public static void main(String[] args) {
		new Test().s(2);
	}
	
	 static class t{
		public static void main(String[] args) {
			new Test().dd();
		}
	}
	 
	 class d{}
}
