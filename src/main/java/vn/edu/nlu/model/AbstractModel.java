package vn.edu.nlu.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
    private Integer id;
    private Timestamp createdDate;
    private Timestamp modifiedDate;
    private String createdBy;
    private String modifiedBy;
    private int[] ids;
    private List<T> listResult = new ArrayList<>();
    private Integer page = 1;
    private Integer maxPageItem = 20;
    private Integer totalPage;
    private Integer totalItem;
    private String sortName;
    private String sortBy;
    private String alert;
    private String message;
    private String type;

    public Integer getId() {
        return id;
    }

    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public Timestamp getModifiedDate() {
        return modifiedDate;
    }

    public String getCreatedBy() {
        return createdBy;
    }

    public String getModifiedBy() {
        return modifiedBy;
    }

    public int[] getIds() {
        return ids;
    }

    public List<T> getListResult() {
        return listResult;
    }

    public Integer getPage() {
        return page;
    }

    public Integer getMaxPageItem() {
        return maxPageItem;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public Integer getTotalItem() {
        return totalItem;
    }

    public String getSortName() {
        return sortName;
    }

    public String getSortBy() {
        return sortBy;
    }

    public String getAlert() {
        return alert;
    }

    public String getMessage() {
        return message;
    }

    public String getType() {
        return type;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    public void setModifiedDate(Timestamp modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public void setCreatedBy(String createdBy) {
        this.createdBy = createdBy;
    }

    public void setModifiedBy(String modifiedBy) {
        this.modifiedBy = modifiedBy;
    }

    public void setIds(int[] ids) {
        this.ids = ids;
    }

    public void setListResult(List<T> listResult) {
        this.listResult = listResult;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public void setMaxPageItem(Integer maxPageItem) {
        this.maxPageItem = maxPageItem;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public void setTotalItem(Integer totalItem) {
        this.totalItem = totalItem;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }

    public void setAlert(String alert) {
        this.alert = alert;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setType(String type) {
        this.type = type;
    }
}
