package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.ICategoryDAO;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.service.ICategoryService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDao;

    @Override
    public List<Category> findAll() {
        List<Category> list = categoryDao.findAll();
        for (Category c : list) {
            c.setNumberOfProduct(categoryDao.countProduct(c.getCode()));
        }
        return list;
    }

    @Override
    public Category save(Category category) {
        category.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        Integer id = categoryDao.save(category);
        return categoryDao.findOne(id);
    }

    @Override
    public Category update(Category updateCategory) {
        Category oldCategory = categoryDao.findOne(updateCategory.getId());
        updateCategory.setCreatedDate(oldCategory.getCreatedDate());
        updateCategory.setCreatedBy(oldCategory.getCreatedBy());
        updateCategory.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        updateCategory.setModifiedBy("");
        categoryDao.update(updateCategory);
        return categoryDao.findOne(updateCategory.getId());
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            // xoa phan ben bang con truoc con truoc
            categoryDao.delete(id);
        }
    }

    @Override
    public Category findOne(Integer id) {
        return categoryDao.findOne(id);
    }

    @Override
    public int count(String code) {
        return categoryDao.countProduct(code);
    }
}
