package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IProductImageDAO;
import vn.edu.nlu.model.ProductImage;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductImageDAO implements IProductImageDAO {

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
    public List<ProductImage> findByProductId(String productId) {
        List<ProductImage> results = new ArrayList<>();
        String sql = "SELECT * FROM hinhanhsanpham WHERE masanpham = ?";
        // open connection
        Connection connection = getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(sql);
                statement.setString(1, productId);
                resultSet = statement.executeQuery();
                while (resultSet.next()) {
                    ProductImage productImage = new ProductImage();
                    productImage.setNo(resultSet.getInt("stt"));
                    productImage.setProductId(resultSet.getString("masanpham"));
                    productImage.getProductImage(resultSet.getString("hinhanhsanpham"));
                    results.add(productImage);
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
