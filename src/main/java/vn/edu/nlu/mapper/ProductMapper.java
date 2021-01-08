package vn.edu.nlu.mapper;

import vn.edu.nlu.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet) {
        Product product = new Product();
        try {
            product.setId(resultSet.getInt("id"));
            product.setCode(resultSet.getString("masanpham"));
            product.setCategoryCode(resultSet.getString("madanhmuc"));
            product.setName(resultSet.getString("tensanpham"));
            product.setPrice(resultSet.getInt("gia"));
            product.setCover(resultSet.getString("anhbia"));
            product.setDescription(resultSet.getString("mota"));
            product.setStatus(resultSet.getBoolean("trangthai"));
            product.setCreatedDate(resultSet.getTimestamp("createddate"));
            product.setCreatedBy(resultSet.getString("createdby"));

            if (resultSet.getTimestamp("modifieddate") != null) {
                product.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            }
            if (resultSet.getString("modifiedby") != null) {
                product.setModifiedBy(resultSet.getString("modifiedby"));
            }
            return product;
        } catch (SQLException e) {
            return null;
        }
    }
}
