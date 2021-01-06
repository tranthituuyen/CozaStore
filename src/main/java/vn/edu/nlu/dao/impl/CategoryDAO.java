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

    /**
     @Override public Category findOne(long id) {
     // sai cau query (ten column)
     String sql = "SELECT * FROM danhmuc WHERE id = ?";
     List<Category> category = query(sql, new CategoryMapper(), id);
     return category.isEmpty() ? null : category.get(0);
     }
     */
    /**
     @Override public Category findOneByCode(String code) {
     // sai cau query (ten column)
     String sql = "SELECT * FROM danhmuc WHERE code = ?";
     List<Category> category = query(sql, new CategoryMapper(), code);
     return category.isEmpty() ? null : category.get(0);
     }
     */
}
