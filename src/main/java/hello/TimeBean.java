/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hello;

import java.beans.*;
import java.io.Serializable;
import java.util.Calendar;

/**
 *
 * @author joell
 */
public class TimeBean implements Serializable {
    private int time;
    private String period;
    
    public TimeBean() {
       time = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
       if(time <= 12){
           period = "m";
       } else if (time <= 18) {
           period = "a";
       } else { 
           period = "e"; 
       }
    }
    
    public int getTime(){
        return this.time;
    }
    public String getPeriod(){
        return this.period;
    }
    
}
