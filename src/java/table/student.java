package table;
import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import java.io.Serializable;
import javax.persistence.*;

@Entity
public class student implements Serializable {
    @Id
    @GeneratedValue
    private int sid;
    private string password;
    private string sname;
    private string dept;

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public string getPassword() {
        return password;
    }

    public void setPassword(string password) {
        this.password = password;
    }

    public string getSname() {
        return sname;
    }

    public void setSname(string sname) {
        this.sname = sname;
    }

    public string getIt() {
        return dept;
    }

    public void setIt(string it) {
        this.dept = dept;
    }
    
    
}
