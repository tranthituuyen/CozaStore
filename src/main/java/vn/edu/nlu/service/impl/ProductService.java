package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IProductDAO;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public Product save(Product product) {
        String newId = productDAO.save(product);
        System.out.println("ching cong!");
        return null;
    }
}
