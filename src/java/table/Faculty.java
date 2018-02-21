package table;

import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;


public class Faculty {
    private int fid;
    private string fname;
    private string dept;
    private string password;

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public string getFname() {
        return fname;
    }

    public void setFname(string fname) {
        this.fname = fname;
    }

    public string getDept() {
        return dept;
    }

    public void setDept(string dept) {
        this.dept = dept;
    }

    public string getPassword() {
        return password;
    }

    public void setPassword(string password) {
        this.password = password;
    }
    
    
}
