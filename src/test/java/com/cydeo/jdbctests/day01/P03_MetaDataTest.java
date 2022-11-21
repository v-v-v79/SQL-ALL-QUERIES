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
        ResultSet rs = statement.executeQuery("select * from REGIONS");











        // close connections
        rs.close();
        statement.close();
        conn.close();

    }
}
