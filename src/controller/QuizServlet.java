package controller;

import domains.Question;
import domains.QuizResult;
import service.QuestionService;
import service.QuizService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "QuizServlet")
public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        if (page.equalsIgnoreCase("quizInstruction")){
            HttpSession session = request.getSession(false);
            int userId = (Integer)session.getAttribute("userId");

            QuizService quizService = new QuizService();
            quizService.deleteTable(userId);
            RequestDispatcher rd = request.getRequestDispatcher("quiz/instructions.jsp");
            rd.forward(request,response);
        }
//        if (page.equalsIgnoreCase("startQuiz")) {
//            QuizService quizService = new QuizService();
//            quizService.deleteTable();
//            RequestDispatcher rd = request.getRequestDispatcher("quiz/start.jsp");
//            rd.forward(request, response);
//        }
        if(page.equalsIgnoreCase("nextQuestion")){
            System.out.println("---------------->>"+request.getParameter("id"));
            int id = Integer.parseInt(request.getParameter("id"));
            if (id != 0) {
                String correctAnswer = request.getParameter("correctAnswer");
                String selectedAnswer = request.getParameter("answer");
                String playedQuestion = request.getParameter("question");
                int marks = 0;
                HttpSession session = request.getSession(false);
//                System.out.println(session);

                int userId = (Integer)session.getAttribute("userId");
                System.out.println(userId);

                if (correctAnswer.equals(selectedAnswer)){
                    marks = 10;
//                    System.out.println("marks=1 "+correctAnswer+selectedAnswer+playedQuestion+marks);
                }
                else {
                    marks = 0;
//                    System.out.println("marks=0 "+correctAnswer+selectedAnswer+playedQuestion+marks);
                }
                QuizService quizService = new QuizService();
                quizService.putQuestionToResult(playedQuestion, correctAnswer, selectedAnswer, marks, userId);
            }
            QuizService quizService = new QuizService();
            Question question = quizService.getQuestionForQuiz(id);

            if (question != null) {
                request.setAttribute("questions", question);
                RequestDispatcher rd = request.getRequestDispatcher("quiz/start.jsp");
                rd.forward(request, response);

            }else{
                RequestDispatcher rd = request.getRequestDispatcher("quiz/submit.jsp");
                rd.forward(request, response);
            }
        }
        if(page.equalsIgnoreCase("viewResult")){
            HttpSession session = request.getSession(false);
            int userId = (Integer)session.getAttribute("userId");

            QuizService quizService = new QuizService();
            List<QuizResult> quizResult = quizService.getQuestionListFromResult(userId);
            request.setAttribute("quizResult", quizResult);
            //Get result from database
            // display result in result page
            RequestDispatcher rd = request.getRequestDispatcher("quiz/result.jsp");
            rd.forward(request, response);
        }
        if (page.equalsIgnoreCase("finishQuiz")){
            HttpSession session = request.getSession(false);
            int userId = (Integer)session.getAttribute("userId");

            QuizService quizService = new QuizService();
            quizService.deleteTable(userId);
            RequestDispatcher rd = request.getRequestDispatcher("user/home.jsp");
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
