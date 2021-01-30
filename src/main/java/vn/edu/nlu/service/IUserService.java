package vn.edu.nlu.service;

import vn.edu.nlu.model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();

    User findByUserNameAndPasswordAndStatus(String username, String password, Integer status);

    User save(User user);

    User update(User updateUser);

    void delete(int[] ids);

}