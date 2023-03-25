package com.ehotels.server.model;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Room {
    private int room_number;
    private double price;
    private String view;
    private int capacity;
    private String problems; //Should it be an array of strings if there are multiple problems?
    private int hotel_id;

    public int getRoom_number(){ return room_number; }

    public void setRoom_Number(int number){ this.room_number = number; }

    public double getPrice(){ return price; }

    public void setPrice(double price){ this.price = price; }

    public String getView(){ return view; }

    public void setView(String view){ this.view = view;}

    public int getCapacity(){ return capacity; }

    public void setCapacity(int capacity){ this.capacity = capacity; }

    public String getProblems(){ return problems; }

    public void setProblems(String problems){ this.problems = problems; }

    public int getHotel_id(){ return hotel_id; }

    public void setHotel_id(int hotel_id){ this.hotel_id = hotel_id; }

    public String toString(){

        return "Room{" +
                "room_number=" + room_number +
                ", price=" + price +
                ", vue='" + view + '\'' +
                ", capacity=" + capacity +
                ", problems='" + problems + '\'' +
                ", hotel_id=" + hotel_id +
                "}";
    }
}


