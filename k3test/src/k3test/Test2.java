package k3test;


public abstract   class Test2 {
	static{
		try {
			Class.forName("Test");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	static {
		System.out.println("abc");
	}
	
	
	private void dd() {
		System.out.println("dddd");
	}
	
	public static void main(String[] args) {
//		new Test2().dd();
	}
	
	 abstract void s();
	
}
