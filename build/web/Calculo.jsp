<%-- 
    Document   : calculo
    Created on : 24/03/2021, 10:25:24
    Author     : PICHAU 
--%>
<%@page import="Calculo.Carro"%>
<%@page import="Calculo.Tabuada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            try {
                String val_1_txt, val_2_txt; //Quando chega do usuário é sempre texto
                int val_1, val_2; // Precisamos converter

                //Capturar
                val_1_txt = request.getParameter("val_1");
                val_2_txt = request.getParameter("val_2");

                //Conversão
                val_1 = Integer.parseInt(val_1_txt);
                val_2 = Integer.parseInt(val_2_txt);
                if (val_1_txt != null && val_2_txt != null){
                    out.println(new Tabuada().CalculoMulti(val_1, val_2));
                }else{
                    out.println("");
                }
                //manda as variáveis para o método java

            } catch (Exception e) {
                out.print("");
                out.print("Multiplicação não foi feita! " + e.getMessage());
                out.print("");
            }


        %>        

    </body>
</html>
