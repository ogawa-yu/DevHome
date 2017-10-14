import java.io.Serializable;
import java.util.Date;

public class Company implements Serializable {
    private static final long serialVersionUID = 1L;
    String name_;
    //int employeeCount_;
    //int since_;

    public Company(String name, int employeeCount) {
        name_ = name;
      //  employeeCount_ = employeeCount;
    }

    public String getName() {
        return name_;
    }
/*
    public int getEmployeeCount() {
        return employeeCount_;
    }

    @Override
    public String toString() {
        return "name_:" + name_ +
        ", employeeCount_:" + employeeCount_ +
        ", since_:" + since_;
    }
*/
}