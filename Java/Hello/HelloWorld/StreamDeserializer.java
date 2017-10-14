import java.io.FileNotFoundException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import com.Company;

public class StreamDeserializer {
    public static void main(String[] args) {
        try (ObjectInputStream in = new ObjectInputStream(
             new FileInputStream("./comp.bin"))) {
            Company obj = (Company)in.readObject();
            System.out.println(obj.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
