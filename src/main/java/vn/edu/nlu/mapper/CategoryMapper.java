package vn.edu.nlu.mapper;

import vn.edu.nlu.model.CategoryModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryMapper implements RowMapper<CategoryModel> {

    @Override
    public CategoryModel mapRow(ResultSet resultSet) {
        try {
            CategoryModel category = new CategoryModel();
            category.setId(resultSet.getLong("id"));
            category.setCode(resultSet.getString("code"));
            category.setName(resultSet.getString("name"));
            return category;
        } catch (SQLException e) {
            return null;
        }
    }
}
