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
            product.setMaSanPham(resultSet.getString("masanpham"));
            product.setThuongHieu(resultSet.getString("thuonghieu"));
            product.setLoaiTrangPhuc(resultSet.getString("loaitrangphuc"));
            product.setPhongCach(resultSet.getString("phongcach"));
            product.setSize(resultSet.getString("size"));
            product.setMau(resultSet.getString("mau"));
            product.setChatLieu(resultSet.getString("chatlieu"));
            product.setHoaTiet(resultSet.getString("hoatiet"));
            product.setKieuDang(resultSet.getString("kieudang"));
            product.setCoAo(resultSet.getString("coao"));
            product.setTuiAo(resultSet.getString("tuiao"));
            product.setTayAo(resultSet.getString("tayao"));
            product.setCachGiat(resultSet.getString("cachgiat"));
            product.setTrangThai(resultSet.getBoolean("trangthai"));

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
