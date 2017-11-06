package controller;
import domains.User;
import service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


public class UsersServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        System.out.println("---------user servlet-----------");
        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("login")) {
            String name = request.getParameter("username");
            String password =request.getParameter("password");

            User user = new UserService().getUser(name, password);
            if (user != null) {

                HttpSession session = request.getSession(false);
                session.setAttribute("user", user);
                session.setAttribute("userId", user.getId());


                request.setAttribute("msg","Login Successful!!");
                RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
                rd.forward(request,response);
            }else{
                request.setAttribute("msg", "Invalid Login!!");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
            }

        }
        if(page.equalsIgnoreCase("userlist")){
            redirectToList(request, response);
        }
        if(page.equalsIgnoreCase("deleteUser")){
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);
            request.setAttribute("deleted","User Successfully Deleted!!");
            redirectToList(request,response);
        }
        if(page.equalsIgnoreCase("insertUserForm")){
            RequestDispatcher rd = request.getRequestDispatcher("user/insert.jsp");
            rd.forward(request,response);
        }
        if(page.equalsIgnoreCase("insertUser")){
            String name = request.getParameter("username");
            String password = request.getParameter("password");
            String role = request.getParameter("role");
            UserService userService = new UserService();
            userService.insertUser(name,password,role);
            request.setAttribute("inserted","User Successfully Inserted !!");
            redirectToList(request,response);
        }
        if(page.equalsIgnoreCase("editUserForm")){
            int id = Integer.parseInt(request.getParameter("id"));
            User user = new UserService().getUser(id);
            request.setAttribute("user",user);
            RequestDispatcher rd = request.getRequestDispatcher("user/edit.jsp");
            rd.forward(request,response);
        }
        if(page.equalsIgnoreCase("editUser")){
            User user = new User();

            user.setName(request.getParameter("username"));
            user.setPassword(request.getParameter("password"));
            user.setRole(request.getParameter("role"));
            user.setId(Integer.parseInt(request.getParameter("id")));
            UserService userService = new UserService();
            userService.editUser(user);
            request.setAttribute("edited","User Successfully Edited !!");
            redirectToList(request,response);
        }

        if (page.equalsIgnoreCase("logout")) {
            HttpSession session = request.getSession(false);
            session.invalidate();

            request.setAttribute("msg","Logged out Successful!!");
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request,response);
        }
        if(page.equalsIgnoreCase("profile")){
            RequestDispatcher rd = request.getRequestDispatcher("user/user-profile.jsp");
            rd.forward(request,response);
        }
        if(page.equalsIgnoreCase("home")){
            RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
            rd.forward(request,response);
        }
    }

    private void redirectToList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserService us = new UserService();
        List<User> users = us.getUserList();
        request.setAttribute("userList", users);
        RequestDispatcher rd = request.getRequestDispatcher("user/list.jsp");
        rd.forward(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request, response);
    }
}
