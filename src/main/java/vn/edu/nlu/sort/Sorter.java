package vn.edu.nlu.sort;

public class Sorter {
    private String sortName;
    private String sortBy;

    public Sorter(String sortName, String sortBy) {
        this.sortName = sortName;
        this.sortBy = sortBy;
    }

    public String getSortName() {
        return sortName;
    }

    public String getSortBy() {
        return sortBy;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public void setSortBy(String sortBy) {
        this.sortBy = sortBy;
    }
}
