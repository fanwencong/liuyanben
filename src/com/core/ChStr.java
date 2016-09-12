package com.core;

import javax.servlet.http.HttpServletRequest;

public class ChStr {
	public String toChinese(String strvalue){
		try {
			if (strvalue==null||strvalue.equals("")) {
				return "";
			} else {
			strvalue = new String(strvalue.getBytes("ISO8859_1"), "UTF-8");
	        return strvalue;
			}
		} catch (Exception e) {
			return "";
		}
		
	}
	private String escapeHTMLTags(String input) {
		if (input==null||input.length()==0){
			return input;
		}
		StringBuffer buffer=new StringBuffer(input.length());
		char ch=' ';
		for (int i = 0; i < input.length(); i++) {
	          ch = input.charAt(i);
	          if (ch == '<') {
	              buffer.append("&lt;");
	          } else if (ch == '>') {
	              buffer.append("&gt;");
	          } else {
	              buffer.append(ch);
	          }
		}
		String str=buffer.toString();
	      str=str.replace(" ","&nbsp;");
	      str=str.replace("\n","<br>");
	      return str;
	}
	public String nullToString(String v, String toV) {
	    if (v == null || "".equals(v)) {
	        v = toV;
	    }
	    return v;
	    }
	public String getIpAddr(HttpServletRequest request) {  
	       String ip = request.getHeader("x-forwarded-for");  
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	           ip = request.getHeader("Proxy-Client-IP");  
	       }  
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	           ip = request.getHeader("WL-Proxy-Client-IP");  
	       }  
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {  
	           ip = request.getRemoteAddr();  
	       }  
	       return ip;  
	   }  
	
}
