package vn.edu.nlu.dao;

import vn.edu.nlu.model.ProductImage;

import java.util.List;

public interface IProductImageDAO {
    List<ProductImage> findByProductId(String productId);
}
