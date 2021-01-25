package vn.edu.nlu.dao;

import vn.edu.nlu.model.Category;

import java.util.List;

public interface ICategoryDAO extends GenericDAO<Category> {
    List<Category> findAll();

    Category findOne(Integer id);

    Category findOne(String code);

    Integer save(Category category);

    void update(Category updateCategory);

    void delete(int id);

    int countProduct(String code);
}
