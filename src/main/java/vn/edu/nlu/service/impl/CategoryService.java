package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.ICategoryDAO;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {

    @Inject
    private ICategoryDAO categoryDao;

    @Override
    public List<Category> findAll() {
        return categoryDao.findAll();
    }
}
