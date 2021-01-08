package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IUserDAO;
import vn.edu.nlu.mapper.UserMapper;
import vn.edu.nlu.model.User;

import java.util.List;

public class UserDAO extends AbstractDAO<User> implements IUserDAO {

    @Override
    public List<User> findAll() {
        String sql = "SELECT * FROM user";
        return query(sql, new UserMapper());
    }

    @Override
    public User findByUserNameAndPasswordAndStatus(String username, String password, Integer status) {
        return null;
    }

    @Override
    public Integer save(User user) {
        return null;
    }

    @Override
    public void update(User updateUser) {

    }

}
