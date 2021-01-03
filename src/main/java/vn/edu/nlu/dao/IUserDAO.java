package vn.edu.nlu.dao;

import vn.edu.nlu.model.UserModel;

public interface IUserDAO  extends GenericDAO<UserModel> {
    UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
    }
