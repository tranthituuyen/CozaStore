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
        StringBuilder sql = new StringBuilder("INSERT INTO user (username, email, password, fullname, status, roleid, createddate, createdby) ");
        sql.append("VALUES (?,?,?,?,?,?,?,?)");

        return insert(sql.toString(), user.getUsername(), user.getEmail(), user.getPassword(), user.getFullname(), user.getStatus(), user.getRoleId(),
                user.getCreatedDate(), user.getCreatedBy());
    }

    @Override
    public void update(User updateUser) {
        StringBuilder sql = new StringBuilder("UPDATE `user` SET username = ?, email = ?, `password` = ?, fullname = ?, `status` = ?, roleid = ?, ");
        sql.append("createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? ");
        sql.append("WHERE id  = ?");

        update(sql.toString(), updateUser.getUsername(), updateUser.getEmail(), updateUser.getPassword(), updateUser.getFullname(), updateUser.getStatus(),
                updateUser.getRoleId(), updateUser.getCreatedDate(), updateUser.getCreatedBy(), updateUser.getModifiedDate(),
                updateUser.getModifiedBy(), updateUser.getId());
    }

    @Override
    public User findOne(Integer id) {
        String sql = "SELECT * FROM user WHERE id = ?";
        List<User> user = query(sql, new UserMapper(), id);
        return user.isEmpty() ? null : user.get(0);
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM user WHERE id = ?";
        update(sql, id);
    }

}
