package vn.edu.nlu.mapper;

import vn.edu.nlu.model.ImagesOfProduct;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ImagesOfProductMapper implements RowMapper<ImagesOfProduct> {

    @Override
    public ImagesOfProduct mapRow(ResultSet resultSet) {
        ImagesOfProduct images = new ImagesOfProduct();
        try {
            images.setId(resultSet.getInt("id"));
            images.setProductCode(resultSet.getString("masanpham"));
            images.setImg(resultSet.getString("hinhanh"));

            return images;
        } catch (SQLException e) {
            return null;
        }
    }
}
