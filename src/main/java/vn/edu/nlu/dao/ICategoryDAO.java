package vn.edu.nlu.dao;

import vn.edu.nlu.model.Category;

import java.util.List;

public interface ICategoryDAO extends GenericDAO<Category> {
    List<Category> findAll();
//    Category findOne(long id);
//    Category findOneByCode(String code);
}
