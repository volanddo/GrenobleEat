package testArchi.views;

import classSql.Restaurant;
import testArchi.controllers.ChooseRestaurantController;
import testArchi.controllers.ChooseRestaurantController.Data;

public class ListRestaurantsView extends View<ChooseRestaurantController.Data> {

    public ListRestaurantsView(Data data) {
        super(data);
    }

    @Override
    public void update() {
        System.out.println("=== Liste des restaurants ===");
        if (getData() != null) {
            for (Restaurant r : getData().restaurants) {
                System.out.println(r.toString());
            }
        } else {
            System.out.println("Aucun restaurant");
        }
    }

}
