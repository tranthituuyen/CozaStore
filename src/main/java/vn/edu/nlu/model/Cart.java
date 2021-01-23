package vn.edu.nlu.model;

import java.util.TreeMap;

public class Cart {
    private TreeMap<Product, Integer> list;
    private long cartID;

    public Cart() {
        list = new TreeMap<>();
        cartID= System.currentTimeMillis();
    }
    public Cart(TreeMap<Product, Integer> list,long cartID){
        this.list = list;
        this.cartID=cartID;
    }

    public TreeMap<Product, Integer> getList() {
        return list;
    }

    public long getCartID() {
        return cartID;
    }

    public void setList(TreeMap<Product, Integer> list) {
        this.list = list;
    }

    public void setCartID(long cartID) {
        this.cartID = cartID;
    }
    public void insertToCart(Product pro, int soluong){
        boolean bln = list.containsKey(pro);
        if(bln){
            int sl = list.get(pro);
            soluong +=sl;
            list.put(pro,soluong);
        }else {
            list.put(pro,soluong);
        }
    }
}
