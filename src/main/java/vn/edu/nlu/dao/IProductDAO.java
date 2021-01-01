package vn.edu.nlu.dao;

import vn.edu.nlu.model.Product;

import java.util.List;

public interface IProductDAO {

    List<Product> findAll();
}
