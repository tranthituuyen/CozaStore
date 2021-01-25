package vn.edu.nlu.dao;

import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;

import java.util.List;

public interface IProductDAO extends GenericDAO<Product> {

    List<Product> findAll();

    List<Product> findAll(Pageable pageable);

    List<Product> findBestSelling();

    List<Product> findBySex();

    Product findOne(Integer id);

    Product findOne(String code);

    List<Product> findByCategoryCode(String categoryId);

    Integer save(Product product);

    void update(Product updateProduct);

    void delete(int id);

    int getTotalItem();
}
