package vn.edu.nlu.service;

import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;

import java.util.List;

public interface IProductService {

    List<Product> findAll();

    List<Product> findByCategoryCode(String categoryCode);

    List<Product> findBestSelling();

    Product save(Product product);

    Product update(Product product);

    void delete(int[] ids);

    int getTotalItems();

    List<Product> findAll(Pageable pageable);
}
