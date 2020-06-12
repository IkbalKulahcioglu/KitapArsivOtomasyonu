/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Lenovo
 */
import java.sql.*;
import javax.swing.JOptionPane;
public class conn {
    
    Connection con=null;
    ResultSet rs;
    PreparedStatement pst;
    
    public static Connection ConnecrDb(){
    try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=kutuphane;user=root;password=1234;");
        return con;
    }catch(Exception e){
        JOptionPane.showMessageDialog(null,e);
        return null;
    }
    }
    


}
