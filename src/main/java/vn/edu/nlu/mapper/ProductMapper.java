package vn.edu.nlu.mapper;

import vn.edu.nlu.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductMapper implements RowMapper<Product> {
    @Override
    public Product mapRow(ResultSet resultSet) {
        Product product = new Product();
        try {
            product.setProductId(resultSet.getString("masanpham"));
            product.setProductName(resultSet.getString("tensanpham"));
            product.setPrice(resultSet.getInt("gia"));
            product.setCover(resultSet.getString("anhbia"));
            return product;
        } catch (SQLException e) {
            return null;
        }
    }
}
