package vn.edu.nlu.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import vn.edu.nlu.model.RoleModel;
import vn.edu.nlu.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

    @Override
    public UserModel mapRow(ResultSet resultSet) {
        try {
            UserModel userModel = new UserModel();
            userModel.setId(resultSet.getInt("id"));
            userModel.setUserName(resultSet.getString("userName"));
            userModel.setFullName(resultSet.getString("fullName"));
            userModel.setPassword(resultSet.getString("password"));
            userModel.setStatus(resultSet.getInt("status"));
            try {
                RoleModel role = new RoleModel();
                role.setCode(resultSet.getString("code"));
                role.setName(resultSet.getString("name"));
                userModel.setRole(role);
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
            return userModel;
        } catch (SQLException e) {
            return null;
        }
    }
}
