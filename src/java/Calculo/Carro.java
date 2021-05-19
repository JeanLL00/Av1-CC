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
public class Carro {
    private String carro;
    private String marca;
    private int ano;
    private float valor;
    private int nparcela;
    private float parcela;

    public Carro(String carro, String marca, int ano, float valor, int nparcela, float parcela) {
        this.carro= carro;
        this.marca = marca;
        this.ano = ano;
        this.valor = valor;
        this.nparcela = nparcela;
        if(nparcela<=12){
            valor = (float) (valor*1.08);
            this.parcela = valor/nparcela;
        }
        if(nparcela>12 && nparcela<24){
            valor = (float) (valor*1.12);
            this.parcela = valor/nparcela;
        }else{
            valor = (float) (valor*1.20);
            this.parcela = valor/nparcela;
        }
    }
    
    public String getCarro() {
        return carro;
    }

    public void setCarro(String carro) {
        this.carro = carro;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getAno() {
        return ano;
    }

    public void setAno(int ano) {
        this.ano = ano;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public int getNparcela() {
        return nparcela;
    }

    public void setNparcela(int nparcela) {
        this.nparcela = nparcela;
    }

    public float getParcela() {
        return parcela;
    }

    public void setParcela(float parcela) {
        this.parcela = parcela;
    }
    

    
}
