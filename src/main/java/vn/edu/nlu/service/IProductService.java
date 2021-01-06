package vn.edu.nlu.service;

import vn.edu.nlu.model.Product;

import java.util.List;

public interface IProductService {

    List<Product> findAll();

    List<Product> findByCategoryCode(String categoryCode);

    Product save(Product product);

    Product update(Product product);

    void delete(int[] ids);
}
