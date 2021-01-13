package vn.edu.nlu.paging;

import vn.edu.nlu.sort.Sorter;

public interface Pageable {
    Integer getPage();

    Integer getOffset();

    Integer getLimit();

    Sorter getSorter();
}
