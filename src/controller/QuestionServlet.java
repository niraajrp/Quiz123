package controller;

import domains.Question;
import service.QuestionService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "QuestionServlet")
public class QuestionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");

        if(page.equalsIgnoreCase("questionList")){
            redirectToList(request,response);
        }
        if(page.equalsIgnoreCase("insertQuestionForm")){
            RequestDispatcher rd = request.getRequestDispatcher("question/insert.jsp");
            rd.forward(request,response);
        }
        if (page.equalsIgnoreCase("insertQuestion")){
            String question = request.getParameter("question");
            String optionOne = request.getParameter("optionOne");
            String optionTwo = request.getParameter("optionTwo");
            String optionThree = request.getParameter("optionThree");
            String optionFour = request.getParameter("optionFour");
            String correctAnswer = request.getParameter("correctAnswer");
            String category = request.getParameter("category");
            QuestionService questionService = new QuestionService();
            questionService.insertQuestion(question,optionOne,optionTwo,optionThree,optionFour,correctAnswer,category);

            request.setAttribute("inserted", "A new Question is Successfully Added !!");

            redirectToList(request,response);
        }
        if (page.equalsIgnoreCase("deleteQuestion")){
            int id = Integer.parseInt(request.getParameter("id"));
            QuestionService questionService = new QuestionService();
            questionService.deleteQuestion(id);

            request.setAttribute("deleted","Question Successfully Deleted !!");

            redirectToList(request,response);
        }
        if (page.equalsIgnoreCase("editQuestionForm")){
            int id = Integer.parseInt(request.getParameter("id"));
            Question question = new QuestionService().getQuestion(id);
            request.setAttribute("question",question);
            RequestDispatcher rd = request.getRequestDispatcher("question/edit.jsp");
            rd.forward(request,response);
        }
        if (page.equalsIgnoreCase("editQuestion")){
            Question question = new Question();
            question.setQuestion(request.getParameter("question"));
            question.setOptionOne(request.getParameter("optionOne"));
            question.setOptionTwo(request.getParameter("optionTwo"));
            question.setOptionThree(request.getParameter("optionThree"));
            question.setOptionFour(request.getParameter("optionFour"));
            question.setCorrectAnswer(request.getParameter("correctAnswer"));
            question.setCategory(request.getParameter("category"));
            question.setId(Integer.parseInt(request.getParameter("id")));
            QuestionService questionService = new QuestionService();
            questionService.editQuestion(question);

            request.setAttribute("edited","Question Successfully Edited !!");

            redirectToList(request,response);
        }
    }
    private void redirectToList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuestionService questionService = new QuestionService();
        List<Question> questions = questionService.getQuestionList();
        request.setAttribute("questionsList", questions);
        RequestDispatcher rd = request.getRequestDispatcher("question/list.jsp");
        rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
