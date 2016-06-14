

<%@page import="acceso.Coneccion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    </table>
    </body>
</html>
