package com.ehotels.server.model;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class RoomAppliance {
    private int room_number;
    private int appliance_id;

    public int getRoom_number() {
        return room_number;
    }

    public void setRoom_number(int room_number) {
        this.room_number = room_number;
    }

    public int getAppliance_id() {
        return appliance_id;
    }

    public void setAppliance_id(int appliance_id) {
        this.appliance_id = appliance_id;
    }

    @Override
    public String toString() {
        return "RoomAppliance{" +
                "room_number=" + room_number +
                ", appliance_id=" + appliance_id +
                '}';
    }
}
