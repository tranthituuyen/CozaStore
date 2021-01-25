package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.IProductDAO;
import vn.edu.nlu.mapper.ProductMapper;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;

import java.util.List;

public class ProductDAO extends AbstractDAO<Product> implements IProductDAO {

    @Override
    public List<Product> findAll() {
        String sql = "SELECT * FROM sanpham";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<Product> findAll(Pageable pageable) {
        StringBuilder sql = new StringBuilder("SELECT * FROM sanpham");
        if (pageable.getSorter().getSortName() != null && pageable.getSorter().getSortBy() != null) {
            sql.append(" ORDER BY ").append(pageable.getSorter().getSortName()).append(" ").append(pageable.getSorter().getSortBy());
        }
        if (pageable.getOffset() != null && pageable.getLimit() != null) {
            sql.append(" LIMIT ").append(pageable.getOffset()).append(", ").append(pageable.getLimit());
        }
        return query(sql.toString(), new ProductMapper());
    }

    @Override
    // method này để lọc ra 20 sản phẩm bán chạy nhất
    public List<Product> findBestSelling() {
        // nhưng tạm thời chưa có hóa đơn nào nên tạm thời lọc ra trước 20 sản phẩm thôi, phải sửa lại sau
        String sql = "SELECT * FROM sanpham LIMIT ?, ?";
        return query(sql, new ProductMapper(), 0, 10);
    }

    @Override
    public Product findOne(Integer id) {
        String sql = "SELECT * FROM sanpham WHERE id = ?";
        List<Product> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public List<Product> findByCategoryCode(String categoryCode) {
        String sql = "SELECT * FROM sanpham WHERE madanhmuc = ?";
        return query(sql, new ProductMapper(), categoryCode);
    }

    @Override
    public Integer save(Product product) {
        StringBuilder sql = new StringBuilder("INSERT INTO sanpham (masanpham, madanhmuc, tensanpham, gia, ");
        sql.append("anhbia, mota, trangthai, createddate, createdby) ");
        sql.append("VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

        return insert(sql.toString(), product.getCode(), product.getCategoryCode(), product.getName(), product.getPrice(),
                product.getCover(), product.getDescription(), product.isStatus(), product.getCreatedDate(), product.getCreatedBy());
    }

    @Override
    public void update(Product updateProduct) {
        StringBuilder sql = new StringBuilder("UPDATE sanpham SET masanpham = ?, madanhmuc = ?, tensanpham = ?, gia = ?, ");
        sql.append("anhbia = ?, mota = ?, trangthai = ?, createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? ");
        sql.append("WHERE id  = ?");

        update(sql.toString(), updateProduct.getCode(), updateProduct.getCategoryCode(), updateProduct.getName(),
                updateProduct.getPrice(), updateProduct.getCover(), updateProduct.getDescription(),
                updateProduct.isStatus(), updateProduct.getCreatedDate(), updateProduct.getCreatedBy(),
                updateProduct.getModifiedDate(), updateProduct.getModifiedBy(), updateProduct.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM sanpham WHERE id = ?";
        update(sql, id);
    }

    @Override
    public int getTotalItem() {
        String sql = "SELECT COUNT(*) FROM sanpham";
        return count(sql);
    }
}
