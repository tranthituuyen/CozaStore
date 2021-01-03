package vn.edu.nlu.service;

import vn.edu.nlu.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    Product save(Product product);
}
