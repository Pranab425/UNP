
package hib;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.SessionFactory;


/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author 1406425
 */
public class HIBDAOLayer {

    private static final SessionFactory sessionFactory;
    
    static {
        try {
            Configuration cfg = new Configuration();
        cfg.addAnnotatedClass(table.student.class);
        cfg.addAnnotatedClass(table.Faculty.class);
        cfg.configure();
        sessionFactory = cfg.buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
    public static Session getSession() {
        return sessionFactory.openSession();
    }
}
