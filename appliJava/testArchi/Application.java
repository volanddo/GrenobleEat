package testArchi;

import testArchi.controllers.Controller;

public abstract class Application {
    
    private Controller<?, ?> controller = null;

    public void changeController(Controller<?, ?> controller) {
        this.controller = controller;
        this.controller.setApp(this);
        this.controller.refreshView();
    }

    public void onInput(String input) {
        if (controller != null) controller.onInput(input);
    }

    public abstract void terminate();

    public abstract void run();

}
