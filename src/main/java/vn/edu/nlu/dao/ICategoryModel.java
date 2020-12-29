package vn.edu.nlu.dao;

import vn.edu.nlu.dao.impl.CategoryModel;

import java.util.List;

public interface ICategoryModel {
    List<CategoryModel> findAll();
}
