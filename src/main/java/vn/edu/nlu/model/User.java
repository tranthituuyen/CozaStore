package vn.edu.nlu.model;

import java.io.Serializable;

public class User extends AbstractModel<User> implements Serializable {

    private String username;
    private String email;
    private String password;
    private String fullname;
    private int status;
    private Integer roleId;
    private Role role = new Role();

    public User() {
    }

    public User(String username, String password) {
        super();
        this.username = username;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public String getFullname() {
        return fullname;
    }

    public String getPassword() {
        return password;
    }

    public int getStatus() {
        return status;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public Role getRole() {
        return role;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
