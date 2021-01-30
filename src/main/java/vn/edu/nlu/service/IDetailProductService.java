package vn.edu.nlu.service;

import vn.edu.nlu.model.DetailProduct;

import java.util.List;

public interface IDetailProductService {

    DetailProduct save(DetailProduct product);

    DetailProduct update(DetailProduct product);

    void delete(int[] ids);

    DetailProduct findOne(Integer id);

    DetailProduct findOne(String productcode);

    DetailProduct findOne(String masanpham, Integer id);

    List<String> findAllColor(String code);

    List<String> findAllSize(String code);

    List<String> getInfo(String code);
}
