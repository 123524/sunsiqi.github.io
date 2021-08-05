package SSQ;

public class goal {
	String []T1={"A","B","A","A","A","C","A","BC","BC","AD"};
	String []T2={"A","A","D","B","B","B","C","A","BD","CD"};
	String []key=null;
	String subject="";
	int fen=0;
	
	
	
	public goal(String []arg,String sub){
		this.key=arg;
		this.subject=sub;
	}
	public int Calscore(){
		if(subject.equals("T1")){
			compare(T1, key);
		}else if(subject.equals("T2")){
			compare(T2, key);			
		}
				
		return fen;
	}
	private void compare(String[] k1,String[]k2){
		if(k1.length!=k2.length){
			return;
		}else{
			for (int i = 0; i < k2.length; i++) {
				System.out.println(k2[i]);
				if(k1[i].equals(k2[i])){
					fen+=10;
					
				}
			}
			
		}
		
		
	}
	
}
