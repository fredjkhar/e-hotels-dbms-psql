package com.ehotels.server.model;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Reservation {
    private int reservation_id;
    private int start_date;
    private int end_date;
    private int NAS_client;
    private int num;
    public int getReservation_id() {
        return reservation_id;
    }
    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
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
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }
    @Override
    public String toString() {
        return "Reservation{" +
                "reservation id=" + reservation_id +
                "start date=" + start_date +
                ", end date=" + end_date +
                ", NAS client='" + NAS_client + '\'' +
                ", num='" + num + '\'' +
                '}';
    }
}
