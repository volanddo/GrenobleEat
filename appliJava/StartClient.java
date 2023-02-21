
import java.io.IOException;

public class StartClient{
    public static void main(String[] args) {
        try {
            Runtime.getRuntime().exec("cls");
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        System.out.println("Start application");
        //lance client
    }
}