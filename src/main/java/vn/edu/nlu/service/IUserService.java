package vn.edu.nlu.service;

import vn.edu.nlu.model.UserModel;

public interface IUserService {
    UserModel findByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}