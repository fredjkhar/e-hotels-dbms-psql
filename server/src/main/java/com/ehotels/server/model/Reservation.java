package com.ehotels.server.model;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Reservation {
    private int reservation_id;
    private String start_date;
    private String end_date;
    private int NAS_client;
    private int room_number;

    public int getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
    }

    public String getStart_date() {
        return start_date;
    }

    public void setStart_date(String start_date) {
        this.start_date = start_date;
    }

    public String getEnd_date() {
        return end_date;
    }

    public void setEnd_date(String end_date) {
        this.end_date = end_date;
    }

    public int getNAS_client() {
        return NAS_client;
    }

    public void setNAS_client(int nAS_client) {
        NAS_client = nAS_client;
    }

    public int getRoom_number() {
        return room_number;
    }

    public void setRoom_number(int room_number) {
        this.room_number = room_number;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "reservation_id=" + reservation_id +
                ", start_date='" + start_date + '\'' +
                ", end_date='" + end_date + '\'' +
                ", NAS_client=" + NAS_client +
                ", room_number=" + room_number +
                '}';
    }
}
