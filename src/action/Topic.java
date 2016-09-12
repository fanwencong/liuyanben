package action;

import java.util.List;
import com.core.*;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.actionForm.ReplyForm;
import com.actionForm.TopicForm;

public class Topic {
	static SessionFactory sessionFactory;
	private Session session=sessionFactory.openSession();
	static{
		try {
			Configuration configuration=new Configuration().configure();
			sessionFactory=configuration.buildSessionFactory();
		} catch (Exception e) {
			System.out.println("创建会话工厂失败"+e.getMessage());
		}
	}
	//添加留言信息的方法
	public int insertTopic(TopicForm topicForm){
		String author=topicForm.getAuthor();
		String content=topicForm.getContent();
	
		ChStr chStr=new ChStr();
		String at="";
		String ct="";
		at=chStr.toChinese(author);
		ct=chStr.toChinese(content);
		topicForm.setAuthor(at);
		topicForm.setContent(ct);
		
		Transaction tx=null;
		int ret=1;
		try {
			tx=session.beginTransaction();//开启事务
			session.save(topicForm);
            tx.commit();            //提交事务
			
		} catch (Exception e) {
			if (tx!=null) {
				tx.rollback();//回滚事务
			}
			ret=0;
			System.out.println("插入留言信息时的错误："+e.getMessage());
			
		}finally {
			
			session.close();
		}
		return ret;
		
	}
	
	//查询留言信息的方法
	 public List queryTopic(){
	        String hql="from TopicForm t,ReplyForm r where r.topicid=t.id order by t.createTime desc"; 
	        //String hql="from TopicForm order by t.createTime asc";  
	        List list=null;
	        try{
	        	Query query=session.createQuery(hql);
	            list=query.list();
	        }catch(Exception e){
	            System.out.println("查询留言信息时的错误信息："+e.getMessage());
	        }finally{
	        	session.close();
	        }
	        return list;
	    }
	 //查询留言信息(没有回复的)的方法
	 public List queryTopicOne(){
		 String hql="from TopicForm t order by t.createTime desc";  
		 List list=null;
		 try{
			 Query query=session.createQuery(hql);
			 list=query.list();
		 }catch(Exception e){
			 System.out.println("查询留言信息时的错误信息："+e.getMessage());
		 }finally{
			 session.close();
		 }
		 return list;
	 }
	 //查询留言回复信息的 方法
	 public ReplyForm queryReply(String id){
	        int iid=Integer.parseInt(id);
	        ReplyForm replyF=null;
	        try{
	        	String hql="from ReplyForm reply where reply.topicid="+iid;
	            Query query=session.createQuery(hql);
	            List list=query.list();
	            replyF=(ReplyForm)list.get(0);
	        }catch(Exception e){
	        	System.out.println("查询回复信息时的错误信息："+e.getMessage());
	        }finally{
	            session.close();
	        }
	        return replyF;
	    }
	 //回复留言信息的方法
	    public int insertReply(ReplyForm replyForm){
	    Session session=sessionFactory.openSession();
	    Transaction tx=null;
	    int ret=1;
	    String author=replyForm.getAuthor();
		String content=replyForm.getContent();
	
		ChStr chStr=new ChStr();
		String at="";
		String ct="";
		at=chStr.toChinese(author);
		ct=chStr.toChinese(content);
		replyForm.setAuthor(at);
		replyForm.setContent(ct);
	    try{
	        tx=session.beginTransaction();  //开启事务
	        session.update(replyForm);
	        tx.commit();            //提交事务
	    }catch(Exception e){
	        if(tx!=null){
	            tx.rollback();   //回滚事务
	        }
	        ret=0;
	        System.out.println("回复留言信息时的错误信息："+e.getMessage());
	    }finally{
	    	session.close();
	    }
	    return ret;
	}
	    //删除留言
	    public int delTopic(String id){
	        Transaction tx=null;
	        int ret=1;
	        int iid=Integer.parseInt(id);
	        try{
	        	 tx=session.beginTransaction();
	             TopicForm topicF=(TopicForm)session.get(TopicForm.class,iid);
	             session.delete(topicF);
	             String hql="from ReplyForm r where r.topicid="+iid;
	             Query query=session.createQuery(hql);
	             List list=query.list();
	             ReplyForm replyForm=(ReplyForm)list.get(0);
	             session.delete(replyForm);
	             tx.commit();
	        }catch(Exception e){
	            tx.rollback();
	            System.out.println("删除留言信息时的错误信息："+e.getMessage());
	            ret=0;
	        }finally{
	            session.close();
	        }
	        return ret;
	    }

	    
	    
}
