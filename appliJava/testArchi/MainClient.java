package testArchi;

import java.util.Scanner;

import testArchi.controllers.ChooseRestaurantController;

public class MainClient extends Application {

    private Scanner scanner;

    public static void main(String[] args) {
        Application app = new MainClient();
        // default controller
        app.changeController(new ChooseRestaurantController());
        // run application
        app.run();
    }

    @Override
    public void run() {
        scanner = new Scanner(System.in);

        while (true) {
            String input = scanner.nextLine();
            onInput(input);
        }
    }

    @Override
    public void terminate() {
        scanner.close();
        System.exit(0);
    }

}
