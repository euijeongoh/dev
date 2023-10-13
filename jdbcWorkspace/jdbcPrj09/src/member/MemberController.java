package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Scanner;

import db.JDBCTemplate;

public class MemberController {

   //필드
   private Scanner sc;
   
   //기본생성자
   public MemberController() {
      sc = new Scanner(System.in);
   }
   
   //메뉴선택
   public void selectMenu() {
      System.out.println("1. 회원가입");
      System.out.println("2. 로그인");
      String n = sc.nextLine();
      
      switch(n) {
      case "1" : join(); break;
      case "2" : login(); break;
      }
   }
   
   //회원가입
   public void join() {
      //데이터 입력받기
      System.out.println("아이디 : ");
      String userId = sc.nextLine();
      System.out.println("비밀번호 : ");
      String userPwd = sc.nextLine();
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      try {
         //conn 얻기
         conn = JDBCTemplate.getConnection();
         
         // 쿼리 실행
         String sql = "INSERT INTO MEMBER(ID,PWD) VALUES(?,?)";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userId);
         pstmt.setString(2, userPwd);
         int result = pstmt.executeUpdate();
         
         //결과 처리
         if(result == 1) {
            conn.commit();
            System.out.println("회원가입 성공!");            
         }else {
            throw new Exception();         
         }
      }catch(Exception e) {
         JDBCTemplate.rollback(conn);
         System.out.println("회원가입 실패..");
         e.printStackTrace();
      }finally {
         //자원 반납
         JDBCTemplate.close(pstmt);
         JDBCTemplate.close(conn);
      }
      
   }
   
   
   
   //로그인
   private void login() {
      //데이터 입력받기
      System.out.println("아이디 : ");
      String userId = sc.nextLine();
      System.out.println("비밀번호 : ");
      String userPwd = sc.nextLine();
      
      Connection conn = null;
      PreparedStatement pstmt = null;
      ResultSet rs = null;
      try {
         //conn 얻기
         conn = JDBCTemplate.getConnection();
         
         // 쿼리 실행
         String sql = "SELECT * FROM MEMBER WHERE ID = ? AND PWD = ?";
         pstmt = conn.prepareStatement(sql);
         pstmt.setString(1, userId);
         pstmt.setString(2, userPwd);
         rs = pstmt.executeQuery();
         
         //결과 처리
         if(rs.next()) {
            System.out.println("성공");
         }else {
            throw new Exception();
         }
      }catch(Exception e) {
         System.out.println("실패");
         e.printStackTrace();
      }finally {
         //자원 반납          
         JDBCTemplate.close(rs);
         JDBCTemplate.close(pstmt);
         JDBCTemplate.close(conn);
      }
      
      
   }
}
