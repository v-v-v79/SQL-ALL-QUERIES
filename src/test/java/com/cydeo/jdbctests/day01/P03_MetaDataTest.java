package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetaDataTest {

    String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
    String dbUsername="hr";
    String dbPassword="hr";

    @Test
    public void task1() throws SQLException {

        // DriverManager Class getConnection method will help to connect database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // It helps us to execute queries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResultSet will store data after execution.It stores only data (there is no table info )
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");


        //  DatabaseMetaData  --> It is information about database itself
        DatabaseMetaData dbMetaData = conn.getMetaData();


        System.out.println(dbMetaData.getUserName());
        System.out.println(dbMetaData.getDatabaseProductName());
        System.out.println(dbMetaData.getDatabaseProductVersion());
        System.out.println(dbMetaData.getDriverName());
        System.out.println(dbMetaData.getDriverVersion());

        
        // ResultSetMetaData --> it provides information about table upper side (columnNames, columnCount)
        ResultSetMetaData rsmd  = rs.getMetaData();


        // How man column we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);


        // get me column name from index 3
        System.out.println(rsmd.getColumnName(3));
        // it will return provided columnIndex name

        // Print all column names dynamicly



        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
