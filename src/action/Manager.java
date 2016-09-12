package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.actionForm.ManagerForm;

public class Manager {
	//��ʼ��Hibernate������SessionFactory
	static SessionFactory sessionFactory;
	private Session session=sessionFactory.openSession();
	static{
		try {
			Configuration configuration=new Configuration().configure();
			sessionFactory=configuration.buildSessionFactory();
		} catch (Exception e) {
			System.out.println("�����Ự����ʧ��"+e.getMessage());
		}
	}
	public String login(ManagerForm managerF,HttpServletRequest request){
	    String rtn="";
	    Session session=sessionFactory.openSession();
	    String name=managerF.getName();
	    String pwd=managerF.getPwd();
	    String hql="from ManagerForm manager where manager.name='"+name+"'";
	    Query query=session.createQuery(hql);
	    List list=query.list();
	    System.out.println("LIST SIZE:"+list.size());
	    if(list.size()==1){
	       ManagerForm m=(ManagerForm)list.get(0);
	       String name1=m.getName();
	        if(pwd.equals(m.getPwd())){
	           rtn="ok";
	           HttpSession httpsession=request.getSession();
	           httpsession.setAttribute("manager",name1);
	           System.out.println("��¼�ɹ���");
	         }else{
	            rtn="��������������";
	            System.out.println("�������");
	         }
	    }else{
	         rtn="������Ĺ���Ա���ƴ���";
	    }
	    return rtn;

	}
	
}
