package SSQ;

public class check {
	
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	private String pass;
	public boolean flags() {
		if(name.equals("ËïË¼ç÷")&&pass.equals("1803058")){
		
		return true;}
		else{
			return false;
			
		}
		
	}
}
