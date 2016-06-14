

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
         <% //Variable change%>
        <script>
                $(document).ready(function(){
                   $("#servicios").change(function(){
                           alert("Servicio cambiado!");
                            });
    
                   $("#unidades").change(function(){
                       alert("Unidades cambiada!");
                               } );
                  
                   $("#responsables").change(function(){
                       alert("Responsables cambiada!");
                               } );            
                  
                  
                });
        </script>        
    </head>
    <body>
      
            <%
                Coneccion con = new Coneccion();
                
                con.setConsulta("select * from servicios");
                    
              
            %>
        
              
                <select id="servicios">
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
                <br><br><br>
   
    
             <%
               
                
                con.setConsulta("select * from unidades");
                    
              
            %>
    
            
             <select id="unidades">
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
        
          
                
                
                
                
           <br><br><br>
            
            
            <%
                
                
                con.setConsulta("select * from responsables");
                    
              
            %>
                
            
             <select id="responsables">
                <% while(con.getResultado().next()){%>
             
                <option><% out.println(con.getResultado().getString("nombre")); %>  </option>
              
                <% } %>
            
            </select>
                
           <br><br><br>
    
           Asignar tarea: <input type="text" id="tarea">
           <br>
           <input type="button" value="Guardar" id="guardar">
            <input type="button" value="Ocular" id="ocultar">
             <input type="button" value="Mostrar" id="mostrar">
    
    </body>
    
    
</html>
