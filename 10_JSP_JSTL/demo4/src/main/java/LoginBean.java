public class LoginBean {
    private String username;
    private String password;
    private String lastname;

    public LoginBean() {
        username ="";
        password ="";
        lastname ="";
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public  boolean isCkeckLogin(){
        if (username.equals("admin") && password.equals("123")){
            return true;
        }
        return false;
    }
}
