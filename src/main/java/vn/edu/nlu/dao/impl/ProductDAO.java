package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IProductDAO;
import vn.edu.nlu.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements IProductDAO {

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/cozastore";
            String user = "root";
            String password = "";
            return DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("error at getConnection() class ProductDAO");
//            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Product> findAll() {
        List<Product> results = new ArrayList<>();
        String sql = "SELECT * FROM sanpham";
        // open connection
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(sql);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    Product product = new Product();
                    product.setProductId(resultSet.getString("masanpham"));
                    product.setProductName(resultSet.getString("tensanpham"));
                    product.setPrice(resultSet.getInt("gia"));
                    results.add(product);
                }
                return results;
            } catch (SQLException e) {
                System.out.println("error at findAll() in ProductDAO");
                return null;
            } finally {
                try {
                    if (resultSet != null) {
                        resultSet.close();
                    }
                    if (statement != null) {
                        statement.close();
                    }
                    connection.close();
                } catch (SQLException e) {
                    return null;
                }
            }
        }
        return null;
    }
}
