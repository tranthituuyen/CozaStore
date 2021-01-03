package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IUserDAO;
import vn.edu.nlu.dao.impl.UserDAO;
import vn.edu.nlu.model.UserModel;
import vn.edu.nlu.service.IUserService;

public class UserService implements IUserService {
    private IUserDAO userDAO;

    public UserService() {
        userDAO = new UserDAO();
    }
    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        return userDAO.findByUserNameAndPasswordAndStatus(userName, password, status);
    }
    }
