package Login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author DELL
 */
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import static java.lang.System.out;
import java.sql.*;
//import javax.servlet.ServletContext;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
public class userclass {
    Statement stmt;
    Connection con;
    ResultSet rs;
    private Object session;
    private Object request;
    public userclass() {
         try{
             Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle");
           stmt = con.createStatement();
           
         
        }
        catch(Exception e)
        {
            out.println("Exception"+e);
            
        }
    }
  //public Connection getconnection() {
        
       
     //   return con;
         //   }
    
    public int insert(userdetails u) throws SQLException
    {
        int id= u.getId();
        String address= u.getAddress();
        String fullname= u.getFullname();
        String dist= u.getDist();
        //userclass u1= new userclass();
        //Connection c=getconnection();
        //PreparedStatement ps=c.prepareStatement(query);
         String query="insert into users(id,address,fullname,dist) values("+id+",'"+address+"','"+fullname+"','"+dist+"')";
         if(stmt.executeUpdate(query)>0){
        
        
    }
         return(1);
    }
    
    public userdetails login(userdetails u) throws SQLException
    {
        userdetails ud=new userdetails();
        String name= u.getFullname();
        String pass=u.getDist();
        rs=stmt.executeQuery("select * from users  where fullname='"+name+"' and dist='"+pass+"'");
        System.out.println("----------"+stmt);
     while(rs.next()){
        ud.setId(Integer.parseInt(rs.getString("id")));
         ud.setFullname(rs.getString("fullname"));
         ud.setAddress(rs.getString("address"));
         ud.setDist(rs.getString("dist"));
   // HttpSession session1= request.getSession();
       // session1.setAttribute("id",id);
        //session.setAttribute("names",fullname);
        //session.setAttribute("address", address);
        //session.setAttribute("status", dist);
     } 
        System.out.println("------------->"+u);
        return ud;
       
       
    }
    public int delete(userdetails u) throws SQLException
    {
        int id= u.getId();
       // userclass u1= new userclass();
       // u1.getconnection();
        String query = "delete from users where id = "+id+"";
        if(stmt.executeUpdate(query)>0){
         
    }
        return (1);
    }
    public int update(userdetails u) throws SQLException
    {
         int id= u.getId();
        String address= u.getAddress();
        String fullname= u.getFullname();
        String dist= u.getDist();
        //userclass u1= new userclass();
        //u1.getconnection();
        String query = "update users set address='"+address+"', fullname='"+fullname+"',dist='"+dist+"' where id = "+id+"";
        if(stmt.executeUpdate(query)>0){
         out.print("<script>alert('Your update Succsuss fully Completed !')</script>");
        
    }
    return(1);
}
    public static void main(String[] args) throws SQLException {
      //  userclass u=new userclass();
       // userdetails ud=new userdetails(1,"","","");
        //u.delete(ud);
    }
}
