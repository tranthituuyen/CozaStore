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
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
        sql.append("INNER JOIN role AS r ON u.roleid = r.id ");
        sql.append("WHERE username = ? AND password = ? AND status = ?");

        List<User> user = query(sql.toString(), new UserMapper(), username, password, status);
        return user.isEmpty() ? null : user.get(0);
    }

    @Override
    public Integer save(User user) {
        return null;
    }

    @Override
    public void update(User updateUser) {

    }

}
