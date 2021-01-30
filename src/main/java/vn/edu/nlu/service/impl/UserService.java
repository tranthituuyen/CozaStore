package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IUserDAO;
import vn.edu.nlu.model.User;
import vn.edu.nlu.service.IUserService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

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
        user.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        Integer newId = userDAO.save(user);
        return userDAO.findOne(newId);
    }

    @Override
    public User update(User updateUser) {
        User old = userDAO.findOne(updateUser.getId());
        updateUser.setCreatedDate(old.getCreatedDate());
        updateUser.setCreatedBy(old.getCreatedBy());
        updateUser.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        userDAO.update(updateUser);
        return userDAO.findOne(updateUser.getId());
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            // xoa phan ben bang con truoc con truoc
            userDAO.delete(id);
        }
    }
}
