package vn.edu.nlu.dao;

import vn.edu.nlu.model.ImagesOfProduct;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;

import java.util.List;

public interface IProductDAO extends GenericDAO<Product> {

    List<Product> findAll();

    List<Product> findAll(Pageable pageable);

    List<Product> findAllLimit(int from, int limit);

    List<Product> findBestSelling();

    List<Product> findByFilter(String param);

    Product findOne(Integer id);

    Product findOne(String code);

    List<Product> findByCategoryCode(String categoryId);

    Integer save(Product product);

    void update(Product updateProduct);

    void delete(int id);

    int getTotalItem();

    List<ImagesOfProduct> findAllImgOfProduct(String code);
}
