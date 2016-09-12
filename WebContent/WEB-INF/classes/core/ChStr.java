package com.core;

public class ChStr {
	public String toChinese(String strvalue){
		try {
			if (strvalue==null) {
				return "";
			} else {
			strvalue = new String(strvalue.getBytes("ISO8859_1"), "GBK");
	        strvalue=this.escapeHTMLTags(strvalue);
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
	
}
