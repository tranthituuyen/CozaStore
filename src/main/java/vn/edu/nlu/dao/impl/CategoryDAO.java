package vn.edu.nlu.dao.impl;

import vn.edu.nlu.dao.ICategoryDAO;
import vn.edu.nlu.mapper.CategoryMapper;
import vn.edu.nlu.model.Category;

import java.util.List;

public class CategoryDAO extends AbstractDAO<Category> implements ICategoryDAO {

    @Override
    public List<Category> findAll() {
        String sql = "SELECT * FROM danhmuc";
        return query(sql, new CategoryMapper());
    }

    @Override
    public Category findOne(Integer id) {
        String sql = "SELECT * FROM danhmuc WHERE id = ?";
        List<Category> category = query(sql, new CategoryMapper(), id);
        return category.isEmpty() ? null : category.get(0);
    }

    @Override
    public Category findOne(String code) {
        String sql = "SELECT * FROM danhmuc WHERE madanhmuc = ?";
        List<Category> category = query(sql, new CategoryMapper(), code);
        return category.isEmpty() ? null : category.get(0);
    }


    @Override
    public Integer save(Category category) {
        StringBuilder sql = new StringBuilder("INSERT INTO danhmuc (madanhmuc, tendanhmuc, hinhanh, createddate, createdby )");
        sql.append("VALUES (?, ?, ?, ?, ?)");

        return insert(sql.toString(), category.getCode(), category.getName(), category.getImage(),
                category.getCreatedDate(), category.getCreatedBy());
    }

    @Override
    public void update(Category updateCategory) {
        StringBuilder sql = new StringBuilder("UPDATE danhmuc SET madanhmuc = ?, tendanhmuc = ?, hinhanh = ?, ");
        sql.append("createddate = ?, createdby = ?, modifieddate = ?, modifiedby = ? ");
        sql.append("WHERE id  = ?");

        update(sql.toString(), updateCategory.getCode(), updateCategory.getName(), updateCategory.getImage(),
                updateCategory.getCreatedDate(), updateCategory.getCreatedBy(), updateCategory.getModifiedDate(),
                updateCategory.getModifiedBy(), updateCategory.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM danhmuc WHERE id = ?";
        update(sql, id);
    }
}
