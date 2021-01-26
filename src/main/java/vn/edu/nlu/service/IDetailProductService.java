package vn.edu.nlu.service;

import vn.edu.nlu.model.DetailProduct;

public interface IDetailProductService {

    DetailProduct save(DetailProduct product);

    DetailProduct update(DetailProduct product);

    void delete(int[] ids);

    DetailProduct findOne(Integer id);

    DetailProduct findOne(String productcode);

    DetailProduct findOne(String masanpham, Integer id);
}
