package service;

import domains.Question;
import domains.QuizResult;
import utils.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuizService {
    public Question getQuestionForQuiz(int id){
        Question question = null;
        String query = "select * from question where id>? limit 1";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
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
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return question;
    }
    public void putQuestionToResult(String question, String correctAnswer, String selectedAnswer, int marks){
        String query = "Insert into result(question,selectedAnswer,correctAnswer,marks)values(?,?,?,?)";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try {
            pstm.setString(1,question);
            pstm.setString(2,selectedAnswer);
            pstm.setString(3,correctAnswer);
            pstm.setInt(4,marks);
            pstm.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
    public List<QuizResult> getQuestionListFromResult(){
        List<QuizResult> quizResult = new ArrayList<QuizResult>();
        String query = "SELECT * FROM result";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try{
            ResultSet resultSet = pstm.executeQuery();
            while(resultSet.next()){
                QuizResult result = new QuizResult();
                result.setId(resultSet.getInt("id"));
                result.setQuestion(resultSet.getString("question"));
                result.setCorrectAnswer(resultSet.getString("correctAnswer"));
                result.setSelectedAnswer(resultSet.getString("selectedAnswer"));
                result.setMarks(resultSet.getInt("marks"));
                quizResult.add(result);
            }
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        return quizResult;
    }
    public void deleteTable(){
        String query = "DELETE FROM result";
        DatabaseConnection db = new DatabaseConnection();
        PreparedStatement pstm = db.getPreparedStatement(query);
        try{
            pstm.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
    }
}
