package vn.edu.nlu.service.impl;

import vn.edu.nlu.dao.IDetailProductDAO;
import vn.edu.nlu.model.DetailProduct;
import vn.edu.nlu.service.IDetailProductService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class DetailProductService implements IDetailProductService {

    @Inject
    private IDetailProductDAO detailProductDAO;

    @Override
    public DetailProduct findOne(Integer id) {
        return detailProductDAO.findOne(id);
    }

    @Override
    public DetailProduct findOne(String productcode) {
        return detailProductDAO.findOne(productcode);
    }

    @Override
    public DetailProduct findOne(String masanpham, Integer id) {
        return detailProductDAO.findOne(masanpham, id);
    }

    @Override
    public DetailProduct save(DetailProduct product) {
        product.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        Integer newId = detailProductDAO.save(product);
        return detailProductDAO.findOne(newId);
    }

    @Override
    public DetailProduct update(DetailProduct product) {
        DetailProduct old = detailProductDAO.findOne(product.getId());
        product.setCreatedDate(old.getCreatedDate());
        product.setCreatedBy(old.getCreatedBy());
        product.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        detailProductDAO.update(product);
        return detailProductDAO.findOne(product.getId());
    }

    @Override
    public void delete(int[] ids) {
        for (int id : ids) {
            // xoa phan ben bang con truoc con truoc
            detailProductDAO.delete(id);
        }
    }
}
