package vn.edu.nlu.dao;

import vn.edu.nlu.model.DetailProduct;

import java.util.List;

public interface IDetailProductDAO extends GenericDAO<DetailProduct> {

    Integer save(DetailProduct product);

    void update(DetailProduct updateProduct);

    void delete(int id);

    DetailProduct findOne(Integer id);

    DetailProduct findOne(String productcode);

    DetailProduct findOne(String masanpham, Integer id);
}
