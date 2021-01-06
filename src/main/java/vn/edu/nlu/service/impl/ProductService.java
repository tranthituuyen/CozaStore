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
    public List<Product> findByCategoryCode(String categoryCode) {
        return productDAO.findByCategoryCode(categoryCode);
    }

    @Override
    public Product save(Product product) {
        Integer newId = productDAO.save(product);
        return productDAO.findOne(newId);
    }

    @Override
    public Product update(Product updateProduct) {
        productDAO.update(updateProduct);
        return productDAO.findOne(updateProduct.getId());
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            productDAO.delete(id);
        }
    }

}
