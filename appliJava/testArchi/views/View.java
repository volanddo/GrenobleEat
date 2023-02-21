package testArchi.views;

public abstract class View<T> {
    
    private T data;

    public View(T data) {
        this.data = data;
    }

    public T getData() {
        return data;
    }
    public abstract void update();

}
