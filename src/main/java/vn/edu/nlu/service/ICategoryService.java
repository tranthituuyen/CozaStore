package vn.edu.nlu.service;

import vn.edu.nlu.model.Category;

import java.util.List;

public interface ICategoryService {
    List<Category> findAll();

    Category save(Category category);

    Category update(Category updateCategory);

    void delete(int[] ids);

    Category findOne(Integer id);

    int count(String code);
}