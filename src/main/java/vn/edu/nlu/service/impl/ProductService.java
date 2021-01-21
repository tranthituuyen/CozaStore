package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.ICategoryDAO;
import vn.edu.nlu.dao.IProductDAO;
import vn.edu.nlu.model.Category;
import vn.edu.nlu.model.Product;
import vn.edu.nlu.paging.Pageable;
import vn.edu.nlu.service.IProductService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;

    @Inject
    private ICategoryDAO categoryDAO;

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<Product> findByCategoryCode(String categoryCode) {
        return productDAO.findByCategoryCode(categoryCode);
    }

    @Override
    public List<Product> findBestSelling() {
        return productDAO.findBestSelling();
    }

    @Override
    public Product save(Product product) {
        product.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        Integer newId = productDAO.save(product);
        return productDAO.findOne(newId);
    }

    @Override
    public Product update(Product updateProduct) {
        Product oldProduct = productDAO.findOne(updateProduct.getId());
        updateProduct.setCreatedDate(oldProduct.getCreatedDate());
        updateProduct.setCreatedBy(oldProduct.getCreatedBy());
        updateProduct.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        productDAO.update(updateProduct);
        return productDAO.findOne(updateProduct.getId());
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            // xoa phan ben bang con truoc con truoc
            productDAO.delete(id);
        }
    }

    @Override
    public int getTotalItems() {
        return productDAO.getTotalItem();
    }

    @Override
    public List<Product> findAll(Pageable pageable) {
        return productDAO.findAll(pageable);
    }

    @Override
    public Product findOne(Integer id) {
        Product product = productDAO.findOne(id);
        Category category = categoryDAO.findOne(product.getCategoryCode());
        product.setCategoryCode(category.getCode());
        return product;
    }

}
