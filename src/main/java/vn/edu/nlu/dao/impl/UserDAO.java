package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IUserDAO;
import vn.edu.nlu.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
        return null;
    }

}
