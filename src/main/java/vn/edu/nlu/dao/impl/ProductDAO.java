package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IProductDAO;
import vn.edu.nlu.mapper.ProductMapper;
import vn.edu.nlu.model.Product;

import java.sql.*;
import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

    @Override
    public List<Product> findAll() {
        String sql = "SELECT * FROM sanpham";
        return query(sql, new ProductMapper());
    }

    @Override
    public String save(Product product) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        String id = null;
        try {
            String sql = "INSERT INTO sanpham (masanpham, madanhmuc, tensanpham, gia) VALUES (?, ?, ?, ?)";
            connection = getConnection();
            connection.setAutoCommit(false);
            statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            statement.setString(1, product.getProductId());
            statement.setString(2, product.getCategoryId());
            statement.setString(3, product.getProductName());
            statement.setInt(4, product.getPrice());

            statement.executeUpdate();

            resultSet = statement.getGeneratedKeys();

            if (resultSet.next()) {
                id = resultSet.getString(1);
            }
            connection.commit();
            return id;
        } catch (SQLException e) {
            if (connection != null) {
                try {
                    connection.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            return null;
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                return null;
            }
        }
    }
}
