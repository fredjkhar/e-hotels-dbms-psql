package com.ehotels.server.model;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Location {
    private int location_id;
    private int start_date;
    private int end_date;
    private int NAS_client;
    private int NAS_employee;
    private int num;
    public int getLocation_id() {
        return location_id;
    }
    public void setLocation_id(int location_id) {
        this.location_id = location_id;
    }
    public int getStart_date() {
        return start_date;
    }
    public void setStart_date(int start_date) {
        this.start_date = start_date;
    }
    public int getEnd_date() {
        return end_date;
    }
    public void setEnd_date(int end_date) {
        this.end_date = end_date;
    }
    public int getNAS_client() {
        return NAS_client;
    }
    public void setNAS_client(int nAS_client) {
        NAS_client = nAS_client;
    }
    public int getNAS_employee() {
        return NAS_employee;
    }
    public void setNAS_employee(int nAS_employee) {
        NAS_employee = nAS_employee;
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }
    @Override
    public String toString() {
        return "Location{" +
                "location_id=" + location_id+
                "start date=" + start_date +
                ", end date =" + end_date +
                ", NAS client='" + NAS_client + '\'' +
                ", NAS employee='" + NAS_employee + '\'' +
                ", num =" + num+
               
                '}';
    }
    
}
