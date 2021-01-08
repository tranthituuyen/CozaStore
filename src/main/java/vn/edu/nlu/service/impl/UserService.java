package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IUserDAO;
import vn.edu.nlu.dao.impl.UserDAO;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.IUserService;

import java.util.List;

public class UserService implements IUserService {
    private IUserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findByUserNameAndPasswordAndStatus(String username, String password, Integer status) {
        return userDAO.findByUserNameAndPasswordAndStatus(username, password, status);
    }

    @Override
    public User save(User user) {
        return null;
    }

    @Override
    public User update(User updateUser) {
        return null;
    }
}
