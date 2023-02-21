package classSql;

public enum Jour{
    Lundi (2), Mardi (3), Mercredi (4), Jeudi (5), Vendredi (6), Samedi (7), Dimanche (1);

    private int number;
    private Jour(int number) {
        this.number = number;
    }

    public int getNumber() {
        return number;
    }
}
