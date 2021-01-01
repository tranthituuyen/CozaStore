package vn.edu.nlu.service;

import vn.edu.nlu.model.ProductImage;

import java.util.List;

public interface IProductImageService {
    List<ProductImage> findByProductId(String productId);
}
