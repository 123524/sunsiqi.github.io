<%@ page language="java" import="java.util.*,SSQ.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fenshu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#fen{
text-align: center;
font-size:40px;

}
span{
color:#FF0000;
}
#paiming{
text-align: center;
font0-size:36px;
position: absolute;
left:48%;

}
#yi1{

color:#FF0000;
font-size:36px;

}

</style>
  </head>
  <body>
    <%
    	String name=(String)session.getAttribute("name");
       String sub=request.getParameter("subject");
       String []ans=new String[10];
       ans[0]=request.getParameter("Single1");
       ans[1]=request.getParameter("Single2");
       ans[2]=request.getParameter("Single3");
       ans[3]=request.getParameter("Single4");
       ans[4]=request.getParameter("Single5");
       ans[5]=request.getParameter("Single6");
       ans[6]=request.getParameter("Single7");
        if(sub.equals("MT")){
        String [] d=request.getParameterValues("double8");
        String temp="";
        for(int i=0;i<d.length;i++){
        temp+=d[i];
        ans[7]=temp;
        }
        }else{
        ans[7]=request.getParameter("Single8");
        }
        String []dd=request.getParameterValues("double9");
        String temp="";
        for(int i=0;i<dd.length;i++){
        temp+=dd[i];
        ans[8]=temp;
        }
         String []ddd=request.getParameterValues("double10");
        temp="";
        for(int i=0;i<ddd.length;i++){
        temp+=ddd[i];
        ans[9]=temp;}
        /*for(int i=0;i<ans.length;i++){
        out.print(ans[i]+"    ");
        }*/
        goal s=new goal(ans,sub);
        int ss=s.Calscore();
        String fen="fen";
        String fen2="fen2";
        String ssss=String.valueOf(ss);
        out.print("<p id='"+fen+"'>恭喜"+name+"获得");
        out.print("<span id='"+fen2+"'>");
        out.print(ssss+"</span>"+"分！");
        ArrayList<String> username= (ArrayList<String>)session.getAttribute("username");
         
        if (username==null){
        username=new ArrayList<String>();
        ArrayList<Integer> userscore=new ArrayList<Integer>();
        session.setAttribute("username",username);
        session.setAttribute("userscore", userscore);
        }else{
        ArrayList<Integer> userscore= (ArrayList<Integer>)session.getAttribute("userscore");
         username.add(name);
         userscore.add(ss);
        for (int i = 0; i < userscore.size(); i++) {
    	for (int j = 0; j<userscore.size()-i-1; j++) {
    		if(userscore.get(j)<userscore.get(j+1)){
    			int temp2=userscore.get(j);
    			userscore.set(j, userscore.get(j+1));
    			userscore.set(j+1,temp2);
    			String name2=username.get(j);
    			username.set(j, username.get(j+1));
    			username.set(j+1,name2);					
    		}
    	}
    		}
        String pai="paiming";
        String yi="yi1";
        out.print("<div id='"+pai+"'><ol>");
        for(int i=0;i<username.size();i++){
        	if(i==0){
        	String name3=username.get(i);
       		String fen3=String.valueOf(userscore.get(i));
       		out.print("<li id='"+yi+"'>"+name3+"        "+fen3+"</li>");
       		}
       		 else{
       		 
       		 String name3=username.get(i);
       		String fen3=String.valueOf(userscore.get(i));
       		out.print("<li>"+name3+"        "+fen3+"</li>");}
        }
        out.print("</ol></div>");  
        
        session.setAttribute("username",username);
        session.setAttribute("userscore", userscore);
        }
    %>
    
  </body>
</html>
