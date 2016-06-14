

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
                   
                       $.get("http://localhost:8080/AppJava01/Tarea", function(data, status){
                       $.each(data, function (i , item)   {    
                         $('#servicios').append('<option value=' + item.unidad_id + '>' + item.nombre+ '</option>');
    
    
    
    });     
        
        
                  
                  
                });
                
    });
        </script>        
    </head>
    <body>
      

              
                <select id="servicios">
             
            
               </select>
           
        
        
        
        
        
        
        
        <br><br><br>
   
    
    
            
             <select id="unidades">
               
             </select>
        
          
                
                
                
                
           <br><br><br>
            
            
          
            
             <select id="responsables">
                
             
             </select>
                
           
           
           
           
           
           
           
           <br><br><br>
    
            Asignar tarea: <input type="text" id="tarea">
            <br>
           <input type="button" value="Guardar" id="guardar">
            <input type="button" value="Ocular" id="ocultar">
             <input type="button" value="Mostrar" id="mostrar">
    
    </body>
    
    
</html>
