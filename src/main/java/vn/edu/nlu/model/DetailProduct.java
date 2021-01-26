package vn.edu.nlu.model;

public class DetailProduct extends AbstractModel<DetailProduct> {
    private String code;
    private String size;
    private String mau;
    private boolean trangthai;
    private String thongtinchitiet;

    public String getCode() {
        return code;
    }

    public String getSize() {
        return size;
    }

    public String getMau() {
        return mau;
    }

    public boolean isTrangthai() {
        return trangthai;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setMau(String mau) {
        this.mau = mau;
    }

    public void setTrangthai(boolean trangthai) {
        this.trangthai = trangthai;
    }

    public String getThongtinchitiet() {
        return thongtinchitiet;
    }

    public void setThongtinchitiet(String thongtinchitiet) {
        this.thongtinchitiet = thongtinchitiet;
    }
}
