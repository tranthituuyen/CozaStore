package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IDetailProductDAO;
import vn.edu.nlu.mapper.DetailProductMapper;
import vn.edu.nlu.model.DetailProduct;

import java.util.List;

public class DetailProductDAO extends AbstractDAO<DetailProduct> implements IDetailProductDAO {

    @Override
    public Integer save(DetailProduct product) {
        StringBuilder sql = new StringBuilder("INSERT INTO chitietsanpham (masanpham, size, mau, trangthai, thongtinchitiet, ");
        sql.append("createddate, createdby) ");
        sql.append("VALUES (?, ?, ?, ?, ?, ?, ?)");

        return insert(sql.toString(), product.getCode(), product.getSize(), product.getMau(), product.isTrangthai(),
                product.getThongtinchitiet(), product.getCreatedDate(), product.getCreatedBy());
    }

    @Override
    public void update(DetailProduct updateProduct) {
        StringBuilder sql = new StringBuilder("UPDATE chitietsanpham SET masanpham = ?, size = ?, mau = ?, thongtinchitiet = ?, ");
        sql.append("trangthai = ?, createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? ");
        sql.append("WHERE id  = ?");

        update(sql.toString(), updateProduct.getCode(), updateProduct.getSize(), updateProduct.getMau(), updateProduct.getThongtinchitiet(),
                updateProduct.isTrangthai(), updateProduct.getCreatedDate(), updateProduct.getCreatedBy(), updateProduct.getModifiedDate(),
                updateProduct.getModifiedBy(), updateProduct.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM chitietsanpham WHERE id = ?";
        update(sql, id);
    }

    @Override
    public DetailProduct findOne(Integer id) {
        String sql = "SELECT * FROM chitietsanpham WHERE id = ?";
        List<DetailProduct> products = query(sql, new DetailProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public DetailProduct findOne(String productcode) {
        String sql = "SELECT * FROM chitietsanpham WHERE masanpham = ?";
        List<DetailProduct> products = query(sql, new DetailProductMapper(), productcode);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public DetailProduct findOne(String masanpham, Integer id) {
        String sql = "SELECT * FROM chitietsanpham WHERE masanpham = ? AND id = ?";
        List<DetailProduct> details = query(sql, new DetailProductMapper(), masanpham, id);
        return details.isEmpty() ? null : details.get(0);
    }
}
