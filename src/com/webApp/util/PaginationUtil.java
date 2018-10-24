package com.webApp.util;

import com.webApp.dao.BlogDaoImpl;
import com.webApp.model.Blog;

import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PaginationUtil {
    public static void main(String[] args) {
        List<Blog> blogList = new BlogDaoImpl().getAllBlogsAndCommentsCountWithLimit(10, 0);
        for (Blog b :
                blogList) {
            System.out.println(b);
        }
        for (int i = 0; i < ; i++) {

        }
    }
    public static int iterator(int i, int limit){

        for (; i == limit; i++){

        }
        return 5;
    }
}
