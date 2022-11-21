package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

        public static void main(String[] args) throws SQLException {

            String dbUrl="jdbc:oracle:thin:@174.129.150.19:1521:XE";
            String dbUsername="hr";
            String dbPassword="hr";

            /*
            HOW TO INIT VARIABLES ?

                -- MAC --> OPT + ENTER
                -- WIN  --> ALT + ENTER

             */

            // DriverManager Class getCOnnection method will help to connect database
            Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

            // It helps us to execute queries
            Statement statement = conn.createStatement();

            // ResultSet will store data after execution.It stores only data (there is no table info )
            ResultSet rs = statement.executeQuery("select * from employees");


            // GETTING DATA



            // close connections
            rs.close();
            statement.close();
            conn.close();


        }
}
