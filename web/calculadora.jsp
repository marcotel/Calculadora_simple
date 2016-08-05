<%-- 
    Document   : newjsp
    Created on : 03-ago-2016, 12:36:40
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Calculo.Calculadora"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String Valor1 =request.getParameter("numero1");
            String Valor2 =request.getParameter("numero2");
            //out.println("El valor 1 es: "+ Valor1);
            
            Calculadora calc = new Calculadora();
            
            int val1=0;
            int val2=0;
            int resultado=0;
            
            if (Valor1 !=null && Valor2 !=null){
                if(Valor1 ==""){
                    Valor1="0";
                }
                if(Valor2==""){
                    Valor2="0";
                }
            
            val1=Integer.parseInt(Valor1);
            val2=Integer.parseInt(Valor2);
            resultado= calc.suma(val1, val2);
            
            //out.println("El Valor 1 es" + Valor1);
            //out.println("El Valor 2 es" + Valor2);
            //out.println("El Resultado es" + resultado);
            }
            %>
        <form action="calculadora.jsp">
            
            <h1>Calculadora Simple</h1>
            Valor1<input type="text" name="numero1" value="<%=val1%>"><br><br>
            Valor2<input type="text" name="numero2" value="<%=val2%>"><br><br>
            Resultado<input type="text" value="<%=resultado%>"><br><br>
            Operacion <button  type="submit">sumar</button><br><br>
        </form>    
    </body>
</html>
