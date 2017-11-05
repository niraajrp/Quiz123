package service;

import domains.Question;
import domains.QuizResult;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionService {
    public Question getQuestion(int id) {
        Question question = null;
        String query = "select * from question where id=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                question = new Question();
                question.setId(rs.getInt("id"));
                question.setQuestion(rs.getString("question"));
                question.setOptionOne(rs.getString("optionOne"));
                question.setOptionTwo(rs.getString("optionTwo"));
                question.setOptionThree(rs.getString("optionThree"));
                question.setOptionFour(rs.getString("optionFour"));
                question.setCorrectAnswer(rs.getString("correctAnswer"));
                question.setCategory(rs.getString("category"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return question;
    }


    public List<Question> getQuestionList() {
        List<Question> questions = new ArrayList<Question>();
        String query = "SELECT * FROM question";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            ResultSet resultSet = pstm.executeQuery();
            while (resultSet.next()) {
                Question question = new Question();
                question.setId(resultSet.getInt("id"));
                question.setQuestion(resultSet.getString("question"));
                question.setOptionOne(resultSet.getString("optionOne"));
                question.setOptionTwo(resultSet.getString("optionTwo"));
                question.setOptionThree(resultSet.getString("optionThree"));
                question.setOptionFour(resultSet.getString("optionFour"));
                question.setCorrectAnswer(resultSet.getString("correctAnswer"));
                question.setCategory(resultSet.getString("category"));
                questions.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return questions;
    }

    public void insertQuestion(String question, String optionOne, String optionTwo, String optionThree, String optionFour, String correctAnswer, String category) {
        String query = "Insert into question(question,optionOne,optionTwo,optionThree,optionFour,correctAnswer,category)values(?,?,?,?,?,?,?)";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setString(1, question);
            pstm.setString(2, optionOne);
            pstm.setString(3, optionTwo);
            pstm.setString(4, optionThree);
            pstm.setString(5, optionFour);
            pstm.setString(6, correctAnswer);
            pstm.setString(7, category);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteQuestion(int id) {
        String query = "DELETE FROM question where id = ?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void editQuestion(Question question) {
        String query = "update question set question=?, optionOne=?, optionTwo=?, optionThree=?, optionFour=?, correctAnswer=?, category=? where id=?";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setString(1, question.getQuestion());
            pstm.setString(2, question.getOptionOne());
            pstm.setString(3, question.getOptionTwo());
            pstm.setString(4, question.getOptionThree());
            pstm.setString(5, question.getOptionFour());
            pstm.setString(6, question.getCorrectAnswer());
            pstm.setString(7, question.getCategory());
            pstm.setInt(8, question.getId());
            pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
