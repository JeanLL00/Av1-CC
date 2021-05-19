<%@page import="Calculo.Tabuada"%>
<%@page import="Calculo.Carro"%>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@ page errorPage="TratarError.jsp" %>  
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h2>Calculadora Multiplicação e Parcelas Financiamento de Carro</h2>
        
        <div id="Dados">
            <p>CÁLCULO MULTIPLICAÇÃO</p>
            <p>Caso os valores estejam entre 1 e 10, será procurado em uma matriz.<br>
            Valores maiores é feito o cálculo</p>
            <form action="Calculo.jsp" method="get" target="result"> 
                Valor 1: <br><input type="text" name="val_1"><br><br>
                Valor 2: <br><input type="text" name="val_2"><br><br>
                <input type="submit" name="enviar" value="Calcular">             
            </form>
        </div>

        <div id="retorno">
            <iframe name="result" width="300" height="100"></iframe>
        </div>
        
        <p>Até 12 parcelas, juros de 8%. <br>De 13 à 24 parcelas: 12%<br> Acima de 24 parcelas: 20¨%</p>
        <%
          //calculo do juros é feito no carro.java
          List<Carro> c = new ArrayList<Carro>();
          c.add(new Carro("GM","Camaro",2016,72000,10,0));
          c.add(new Carro("Ford","Focus",2018,565000,20,0));
          c.add(new Carro("WW","Gol",2019,40300,30,0));
          for(Carro valor : c){
              out.print("---------<br>");
              out.print("Carro: "+valor.getCarro()+"<br>");
              out.print("Marca: "+valor.getMarca()+"<br>");
              out.print("Ano: "+valor.getAno()+"<br>");
              out.print("Valor: "+valor.getValor()+" Reais<br>");
              out.print("Número de Parcelas: "+valor.getNparcela()+"<br>");
              out.print("Valor das Parcelas: "+valor.getParcela()+" Reais<br>");
          }
        %>
        
        <font face=Arial size=3>

    </body>
</html>
