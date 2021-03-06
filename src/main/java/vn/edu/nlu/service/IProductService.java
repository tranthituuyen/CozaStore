package vn.edu.nlu.service;

import vn.edu.nlu.model.DetailProduct;
import vn.edu.nlu.model.ImagesOfProduct;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;

import java.util.List;

public interface IProductService {

    List<Product> findAll();

    List<Product> findAllLimit(int from, int limit);

    List<Product> findByCategoryCode(String categoryCode);

    List<Product> findByFilter(String param);

    List<Product> findBestSelling();

    Product save(Product product);

    Product update(Product product);

    void delete(int[] ids);

    int getTotalItems();

    List<Product> findAll(Pageable pageable);

    Product findOne(Integer id);

    Product findOne(String code);

    List<ImagesOfProduct> findAllImgOfProduct(String code);

    List<DetailProduct> findAllDetailOfProduct(String masanpham);

    List<Size> finfAllSize(String code);

    int countProduct(String code);

    List<Product> findByKeyword(String keyword);
}
