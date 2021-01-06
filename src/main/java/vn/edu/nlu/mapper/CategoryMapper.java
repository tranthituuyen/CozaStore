package vn.edu.nlu.mapper;

import vn.edu.nlu.model.Category;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<Category> {

    @Override
    public Category mapRow(ResultSet resultSet) {
        try {
            Category category = new Category();
            category.setId(resultSet.getInt("id"));
            category.setCode(resultSet.getString("madanhmuc"));
            category.setName(resultSet.getString("tendanhmuc"));
            category.setImage(resultSet.getString("hinhanh"));
            return category;
        } catch (SQLException e) {
            return null;
        }
    }
}
