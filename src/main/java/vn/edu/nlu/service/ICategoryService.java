package vn.edu.nlu.service;

import java.util.List;

import vn.edu.nlu.model.CategoryModel;

public interface ICategoryService {
    List<CategoryModel> findAll();
}