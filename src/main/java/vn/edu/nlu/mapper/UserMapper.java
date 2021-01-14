package vn.edu.nlu.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import vn.edu.nlu.model.Role;
import vn.edu.nlu.model.User;

public class UserMapper implements RowMapper<User> {

    @Override
    public User mapRow(ResultSet resultSet) {
        try {
            User user = new User();
            user.setId(resultSet.getInt("id"));
            user.setUsername(resultSet.getString("username"));
            user.setPassword(resultSet.getString("password"));
            user.setFullname(resultSet.getString("fullname"));
            user.setStatus(resultSet.getInt("status"));
            //
            user.setRoleId(resultSet.getInt("roleid"));
            user.setCreatedDate(resultSet.getTimestamp("createddate"));
            user.setCreatedBy(resultSet.getString("createdby"));
            user.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            user.setModifiedBy(resultSet.getString("modifiedby"));

            try {
                Role role = new Role();
                role.setCode(resultSet.getString("code"));
                role.setName(resultSet.getString("name"));
                user.setRole(role);
            } catch (Exception e) {
                System.out.print(e.getMessage());
            }
            return user;
        } catch (SQLException e) {
            return null;
        }
    }
}
