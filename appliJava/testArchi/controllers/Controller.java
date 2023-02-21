package testArchi.controllers;

import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;

import testArchi.Application;
import testArchi.views.View;

public abstract class Controller<S, T> {
    
    public static class StateData<T> {
        private View<T> view;
        private String prompt;
        private Consumer<String> onInput;

        public StateData(View<T> view, String prompt, Consumer<String> onInput) {
            this.view = view;
            this.prompt = prompt;
            this.onInput = onInput;
        }
    }

    private Application app;

    private Map<S, StateData<T>> states = new HashMap<>();
    private S currentState;
    private View<T> currentView;
    private T data;

    public Controller(T data) {
        this.data = data;
    }

    public T getData() {
      return data;
    }

    public void setDefaultState(S defaultState) {
        setState(defaultState, true);
    }

    public void setState(S state) {
        this.setState(state, false);
    }
    private void setState(S state, boolean disableDisplay) {
        currentState = state;
        if (states.containsKey(state)) {
            currentView = states.get(state).view;
        } else {
            currentView = null;
        }
        if (!disableDisplay) refreshView();
    }
    public void refreshView() {
        if (currentView != null) currentView.update();
        if (states.containsKey(currentState) && states.get(currentState).prompt != null) System.out.println(states.get(currentState).prompt);
    }
    public void setStateData(S state, StateData<T> data) {
        states.put(state, data);
    }

    public void setApp(Application app) {
        this.app = app;
    }
    public Application getApp() {
        return app;
    }

    public void onInput(String input) {
        if (!states.containsKey(currentState)) return;
        Consumer<String> onInputFunc = states.get(currentState).onInput;
        onInputFunc.accept(input);
    }

}
