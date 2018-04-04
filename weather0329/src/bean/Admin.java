


package bean;


public class Admin {
	private int adminId;     //私有变量，仅有内部类和创建者可以调用
    private String adminName;
    private String adminPassword;
    private String sd;
    public Admin(){
    	
    }
    public Admin(String adminName,String adminPassword){
    	this.adminName=adminName;
    	this.adminPassword=adminPassword;
    }
    
    public String getAdminName(){
    	return adminName;
    }
    public void setAdminName(String adminName){
    	this.adminName=adminName;
    }
    public String getAdminPassword(){
    	return adminPassword;
    }
    public void setadminPassword(String adminPassword){
    	this.adminPassword=adminPassword;
    }
}
