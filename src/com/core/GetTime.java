package com.core;

import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class GetTime {
	
	public Date getDate(){
		Date dateU=new Date();
		java.sql.Date date=new java.sql.Date(dateU.getTime());
		System.out.println(date);
		return date;
	}	
	public String getDateTime() {
		SimpleDateFormat format;
        Date date=null;
        Calendar myDate=Calendar.getInstance();
        myDate.setTime(new java.util.Date());
        date=myDate.getTime();
        format=new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String rtnStr=format.format(date);
        return rtnStr;
	}
}
