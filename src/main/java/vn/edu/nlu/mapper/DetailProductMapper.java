package vn.edu.nlu.mapper;

import vn.edu.nlu.model.DetailProduct;

import java.sql.ResultSet;
import java.sql.SQLException;

public class DetailProductMapper implements RowMapper<DetailProduct> {

    @Override
    public DetailProduct mapRow(ResultSet resultSet) {
        DetailProduct product = new DetailProduct();
        try {
            product.setId(resultSet.getInt("id"));
            product.setCode(resultSet.getString("masanpham"));
            product.setSize(resultSet.getString("size"));
            product.setMau(resultSet.getString("mau"));
            product.setSoluong(resultSet.getInt("soluong"));
            product.setTrangthai(resultSet.getBoolean("trangthai"));
            product.setThongtinchitiet(resultSet.getString("thongtinchitiet"));

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
