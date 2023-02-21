package testArchi.controllers;

public class OrderController extends Controller<OrderController.State, OrderController.Data> {

    public static enum State {
        
    }
    public static class Data {
        
    }

    public OrderController(String param) {
        super(new Data());
        System.out.println("Received '" + param + "' as param");
    }
    
}
