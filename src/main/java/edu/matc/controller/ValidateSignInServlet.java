package edu.matc.controller;

import edu.matc.persistence.*;
import edu.matc.entity.*;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet (
        name = "ValidateSignInServlet",
        urlPatterns = "/validateSignIn"
)
public class ValidateSignInServlet extends HttpServlet {
    /**
     *  Handles HTTP GET requests.
     *
     *@param  request               the HttpRequest
     *@param  response              the HttpResponse
     *@exception  ServletException  if there is a general
     *                              servlet exception
     *@exception  IOException       if there is a general
     *                              I/O exception
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String url;

        int userLevel = getUserData(request, response);

        if (userLevel == 0) {
            url = "/jsp/sign-in.jsp";
            request.setAttribute("signInMessage", "Invalid Sign In");
        } else if (userLevel == 1) {
            url = "/jsp/signed-in-admin.jsp";
            request.setAttribute("signInMessage", "Hello Admin");
        } else {
            url = "/jsp/signed-in.jsp";
        }

        RequestDispatcher  dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    private int getUserData(HttpServletRequest request, HttpServletResponse response) {
        String userName = request.getParameter("userName").trim();
        String userPassword = request.getParameter("password").trim();

        UserData userData = new UserData();

        User userBean = userData.getUser(userName, userPassword);

        if (userBean.getActive()) {
            return userBean.getLevel();
        } else {
            return 0;
        }

    }

}
