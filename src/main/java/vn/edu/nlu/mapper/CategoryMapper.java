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
            category.setCreatedDate(resultSet.getTimestamp("createddate"));
            category.setCreatedBy(resultSet.getString("createdby"));

            if (resultSet.getTimestamp("modifieddate") != null) {
                category.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby") != null) {
                category.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return category;
        } catch (SQLException e) {
            return null;
        }
    }
}
