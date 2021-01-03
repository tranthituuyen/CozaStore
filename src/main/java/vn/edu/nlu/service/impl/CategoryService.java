package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.ICategoryDAO;
import vn.edu.nlu.model.CategoryModel;
import vn.edu.nlu.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDao;

    @Override
    public List<CategoryModel> findAll() {
        return categoryDao.findAll();
    }
}
