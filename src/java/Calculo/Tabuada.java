/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Calculo;

/**
 *
 * @author PICHAU
 */
public class Tabuada {
    public String CalculoMulti(int val1, int val2){
        if (val1 >= 1 && val1 <=10 && val2 >= 1 && val2 <=10){
            //array com a tabuada do 1 ao 10
                 int Tabuada[][] ={
                    {1,2,3,4,5,6,7,8,9,10},
                    {2,4,6,8,10,12,14,16,18,20},
                    {3,6,9,12,15,18,21,24,27,30},
                    {4,8,12,16,20,24,28,32,36,40},
                    {5,10,15,20,25,30,35,40,45,50},
                    {6,12,18,24,30,36,42,48,54,60},
                    {7,14,21,28,35,42,49,56,63,70},
                    {8,16,24,32,49,48,56,64,72,80},
                    {9,18,27,36,45,54,63,72,81,90},
                    {10,20,30,40,50,60,70,80,90,100},
        };
        return "A multiplicação de "+ val1 + " x " + val2 + " É igual à "+ Tabuada[val1-1][val2-1];
                }
        else{
            int result = val1*val2;
            return "A multiplicação de "+ val1 + " x " + val2 + " É igual à "+ result;
        }
        
        
        
    }
}
