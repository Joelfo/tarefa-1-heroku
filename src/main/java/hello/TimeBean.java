/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hello;
import java.beans.*;
import java.io.Serializable;
import java.util.Calendar;
import java.util.TimeZone;
//import java.lang.Math;
/**
 *
 * @author joell
 */
public class TimeBean implements Serializable {
    private float time;
    private String period;
    
    public TimeBean() {
       setTime((float) Calendar.getInstance().get(Calendar.HOUR_OF_DAY));
    }
    
    public float getTime(){
        return this.time;
    }
    public void setTime(float time){
        this.time = time;
    }
    public String getPeriod(){
        if(time <= 12){
           period = "m";
       } else if (time <= 18) {
           period = "a";
       } else { 
           period = "e"; 
       }
        return period;
    }
    
}
