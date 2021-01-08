package vn.edu.nlu.dao;

import vn.edu.nlu.model.User;

import java.util.List;

public interface IUserDAO extends GenericDAO<User> {

    List<User> findAll();

    User findByUserNameAndPasswordAndStatus(String username, String password, Integer status);

    Integer save(User user);

    void update(User updateUser);
}
