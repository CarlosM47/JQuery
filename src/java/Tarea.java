

import acceso.Coneccion;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import negocio.Servicios;


@WebServlet(urlPatterns = {"/Tarea"})
public class Tarea extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          
             //Coneccion
              //Se crean los if
             Coneccion con= new Coneccion();
           
             if(request.getParameter("servicio_id")!=null){
        
                 String servicio_id=request.getParameter("servicio_id");
                 
                 con.setConsulta("select * from Unidades where servicio_id = '" +servicio_id+"'");
             ArrayList lista=new ArrayList();
             
            try {
                while (con.getResultado().next()){
                    Servicios serv = new Servicios();
                    serv.setServicio_id(con.getResultado().getInt("servicio_id"));
                    serv.setNombre(con.getResultado().getString("nombre"));
                    serv.setEstado(con.getResultado().getString("estado"));
                    lista.add(serv);
                    
                    
                }
            } catch (SQLException ex) {
                
            }
             
             
             // vadriable json con arraylist
            String json= new Gson().toJson(lista);
            
            //setear aplicacion json
            response.setContentType("application/json");
            //encodear a utf8
            response.setCharacterEncoding("UTF-8");
            //mostrar o imprimir el json
            response.getWriter().write(json);
                 
                 
                 
           
             
             
             
             
             }else{
             
         
                 
                 
                 
             con.setConsulta("select * from servicios");
             ArrayList lista=new ArrayList();
             
            try {
                while (con.getResultado().next()){
                    Servicios serv = new Servicios();
                    serv.setServicio_id(con.getResultado().getInt("servicio_id"));
                    serv.setNombre(con.getResultado().getString("nombre"));
                    serv.setEstado(con.getResultado().getString("estado"));
                    lista.add(serv);
                    
                    
                }
            } catch (SQLException ex) {
             // vadriable json con arraylist
            String json= new Gson().toJson(lista);
            
            //setear aplicacion json
            response.setContentType("application/json");
            //encodear a utf8
            response.setCharacterEncoding("UTF-8");
            //mostrar o imprimir el json
            response.getWriter().write(json);     
            }
             
             
           
             }
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
