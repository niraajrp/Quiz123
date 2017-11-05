package service;

import domains.User;
import utils.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserService {

    public User getUser(String name, String password) {
        User user = null;
        String query = "select * from user where name=? and password=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setString(1, name);
            pstm.setString(2, password);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                System.out.println(user);


            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return user;

    }

    public User getUser(int id) {
        User user = null;
        String query = "select * from user where id=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                System.out.println(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return user;

    }


    public List<User> getUserList() {
        List<User> users = new ArrayList<User>();
        String query1 = "SELECT * FROM user";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query1);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setPassword(rs.getString("password"));
                user.setName(rs.getString("name"));
                user.setRole(rs.getString("role"));
                System.out.println(users);
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public void deleteUser(int id) {

        String query = "DELETE FROM user where id=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            pstm.executeUpdate();

        }

        catch(SQLException e) {
            e.printStackTrace();
        }
    }
    public void insertUser(String name, String password, String role){
        String query = "Insert into user(name,password,role)values(?,?,?)";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try{
            pstm.setString(1,name);
            pstm.setString(2,password);
            pstm.setString(3,role);
            pstm.executeUpdate();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
    public void editUser(User user){
        String query = "update user set name=?, password=?, role=? where id=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try{
            pstm.setString(1, user.getName());
            pstm.setString(2, user.getPassword());
            pstm.setString(3, user.getRole());
            pstm.setInt(4, user.getId());
            pstm.executeUpdate();
        }
        catch(SQLException e){
            e.printStackTrace();
        }
    }
}


