package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P04_ListOfMaps {


    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";


    @Test
    public void task1() {

        Map<String,Object> rowMap1=new HashMap<>();

        System.out.println("----ROW MAP 1 ");
        rowMap1.put("first_name","Steven");
        rowMap1.put("last_name","King");
        rowMap1.put("salary",24000);

        System.out.println(rowMap1);


        Map<String,Object> rowMap2=new HashMap<>();

        System.out.println("----ROW MAP 2 ");
        rowMap2.put("first_name","Neena");
        rowMap2.put("last_name","Kocchar");
        rowMap2.put("salary",17000);
        System.out.println(rowMap2);


        /**
         *
         * It will continue till the end of the List
         * Assume that we have 107 map
         * Create an ArrayList and put all Maps into List
         */

        List<Map<String,Object>> dataList=new ArrayList<>();

        dataList.add(rowMap1);
        dataList.add(rowMap2);

        System.out.println(dataList);

        // give me last name of Steven
        System.out.println(dataList.get(0).get("last_name"));

    }
}
