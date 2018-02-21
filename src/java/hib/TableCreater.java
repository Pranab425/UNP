
package hib;


import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import table.*;

public class TableCreater {
    public static void main(String[] args) {
        Configuration cfg = new Configuration();
        cfg.addAnnotatedClass(student.class);
        cfg.configure();
        
        SchemaExport se = new SchemaExport(cfg);
        se.create(true, true);
        
        System.out.println("TABLE CREATED");
    }
}
