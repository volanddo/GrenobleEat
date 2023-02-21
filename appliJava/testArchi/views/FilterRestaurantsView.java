package testArchi.views;

import java.util.List;

import classSql.Restaurant;
import testArchi.controllers.ChooseRestaurantController;
import testArchi.controllers.ChooseRestaurantController.Data;

public class FilterRestaurantsView extends View<ChooseRestaurantController.Data> {
    
    public FilterRestaurantsView(Data data) {
        super(data);
    }

    @Override
    public void update() {
        System.out.println("=== Filtrer des restaurants ===");
        System.out.println("Filter ? (y/n)"); 
    }

}
