package DBSource;

import java.util.ArrayList;
import java.util.List;
/**
 * ��ʼ����ģ��������е������ļ�
 * @author Ran
 *
 */
public class DBInitInfo {
	public  static List<DBbean>  beans = null;
	static{
		beans = new ArrayList<DBbean>();
		// �������� ���Դ�xml �������ļ����л�ȡ
		// Ϊ�˲��ԣ�������ֱ��д��
		DBbean beanmysql = new DBbean();
		beanmysql.setDriverName("com.mysql.jdbc.Driver");
		beanmysql.setUrl("jdbc:mysql://127.0.0.1:3306/feducation");
		beanmysql.setUserName("root");
		beanmysql.setPassword("123456");
		
		beanmysql.setMinConnections(5);
		beanmysql.setMaxConnections(100);
		
		beanmysql.setPoolName("testPool");
		beans.add(beanmysql);
	}
}
