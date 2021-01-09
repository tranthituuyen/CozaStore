package vn.edu.nlu.dao;

import vn.edu.nlu.model.Product;

import java.util.List;

public interface IProductDAO extends GenericDAO<Product> {

    List<Product> findAll();

    List<Product> findAll(Integer offset, Integer limit);

    List<Product> findBestSelling();

    Product findOne(Integer id);

    List<Product> findByCategoryCode(String categoryId);

    Integer save(Product product);

    void update(Product updateProduct);

    void delete(int id);

    int getTotalItem();
}
