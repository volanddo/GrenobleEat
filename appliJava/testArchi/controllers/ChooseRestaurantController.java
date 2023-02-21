package testArchi.controllers;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import classSql.Restaurant;
import testArchi.views.FilterRestaurantsView;
import testArchi.views.ListRestaurantsView;
import testArchi.views.View;

public class ChooseRestaurantController
        extends Controller<ChooseRestaurantController.State, ChooseRestaurantController.Data> {

    public static enum State {
        LIST, FILTER
    }

    public static class Data {
        public List<Restaurant> restaurants = new ArrayList<>();

    }

    public ChooseRestaurantController() {
        super(new Data());
        getData().restaurants.addAll(Arrays.asList(new Restaurant[] {
                new Restaurant("1", "1", null, null, 0, null),
                new Restaurant("2", "2", null, null, 0, null),
                new Restaurant("3", "3", null, null, 0, null),
                new Restaurant("4", "4", null, null, 0, null),
                new Restaurant("5", "5", null, null, 0, null)
        }));

        // States
        setStateData(State.LIST, new StateData<>(
                new ListRestaurantsView(getData()),
                "filter > Accéder au menu de filtre des restaurants \nnext > Passer au menu de commande",
                (String input) -> {
                    switch (input) {
                        case "next":
                            getApp().changeController(
                                    new OrderController(getData().restaurants.size() + " restaurants"));
                            break;
                        case "filter":
                            setState(State.FILTER);
                            break;
                    }
                }));
        setStateData(State.FILTER, new StateData<>(
                new FilterRestaurantsView(getData()),
                null,
                (String input) -> {
                    if (input.equals("y"))
                        getData().restaurants.remove(0);
                    setState(State.LIST);
                }));

        setDefaultState(State.LIST);
    }

}
