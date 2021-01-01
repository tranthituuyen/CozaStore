package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IProductImageDAO;
import vn.edu.nlu.model.ProductImage;
import vn.edu.nlu.service.IProductImageService;

import javax.inject.Inject;
import java.util.List;

public class ProductImageService implements IProductImageService {
    @Inject
    private ProductImage productImage;
    @Inject
    private IProductImageDAO productImageDAO;

    public ProductImageService() {
    }

    @Override
    public List<ProductImage> findByProductId(String productId) {
        return productImageDAO.findByProductId(productId);
    }
}