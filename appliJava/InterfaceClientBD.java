
public class InterfaceClientBD {
    private ClientApp client;
    private DBConnector connecteur;

    public InterfaceClientBD(){
        this.client = new ClientApp();
        this.connecteur = new DBConnector("url");
    }

    public void exec(String input) throws DemandeInvalide{
        return;
    }
}
