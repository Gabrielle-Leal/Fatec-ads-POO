/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author gabi
 */
public class Horario {
    public int hora;
    public int minuto;
    public int segundo;

    public Horario(){
        hora = 00;
        minuto = 00;
        segundo = 00;
    }
    
    public Horario(int hora, int minuto, int segundo){
        this.hora = hora;
        this.minuto = minuto;
        this.segundo = segundo;
    }
    

    public String getHorario(){
         String horario = "";
        if(hora<10) horario += "0";
        horario += hora+":";
        if(minuto<10) horario += "0";
        horario += minuto+":";
        if(segundo<10) horario += "0";
        horario += segundo;
        return horario;
    }


    }