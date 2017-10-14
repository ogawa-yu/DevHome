
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

public class StreamSerializer {
    public static void main(String[] args) {
        try (ObjectOutputStream out = new ObjectOutputStream(
             new FileOutputStream("./comp.bin"))) {
            Company obj = new Company("A sha", 10);
            out.writeObject(obj);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
} 
