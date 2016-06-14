

<%@page import="acceso.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%//jquery link%>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        
        <% //Hacer algo despues de cargar el jquery%>
         <% //Mete en el valor tarea%>
        <script>
                $(document).ready(function(){
                   $("#guardar").click(function(){
                       
                       $("#tarea").val("Boton Presionado");
                       
                   }
                   
                   
                });
        </script>        
    </head>
    <body>
      
            <%
                Coneccion con = new Coneccion();
                
                con.setConsulta("select * from servicios");
                    
              
            %>
        
              
                <select>
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
                <br><br><br>
   
    
             <%
               
                
                con.setConsulta("select * from unidades");
                    
              
            %>
    
            
             <select>
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
        
          
                
                
                
                
           <br><br><br>
            
            
            <%
                
                
                con.setConsulta("select * from responsables");
                    
              
            %>
                
            
             <select>
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
                
           <br><br><br>
    
           Asignar tarea: <input type="text" id="tarea">
           <br>
           <input type="button" value="Guardar" id="guardar">
    
    </body>
    
    
</html>
