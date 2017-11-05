package controller;

import domains.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "SessionFilter")
public class SessionFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        System.out.println("--------Filter------");
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
       String page = request.getParameter("page");
        if (page!=null && !page.equalsIgnoreCase("login")) {
            HttpSession session = request.getSession(false);
            User user = (User)session.getAttribute("user");
            if (user == null) {
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
                return;
            }
        }

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
