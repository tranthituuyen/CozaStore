package vn.edu.nlu.paging;

import vn.edu.nlu.sort.Sorter;

public class PageRequest implements Pageable {

    private Integer page;
    private Integer maxPageItem;
    private Sorter sorter;

    public PageRequest(Integer page, Integer maxPageItem, Sorter sorter) {
        this.page = page;
        this.maxPageItem = maxPageItem;
        this.sorter = sorter;
    }

    @Override
    public Integer getPage() {
        return this.page;
    }

    @Override
    public Integer getOffset() {
        if (page != null && maxPageItem != null) {
            return (this.page - 1) * this.maxPageItem;
        } else {
            return null;
        }
    }

    @Override
    public Integer getLimit() {
        return this.maxPageItem;
    }

    @Override
    public Sorter getSorter() {
        if (this.sorter != null) {
            return this.sorter;
        }
        return null;
    }
}
