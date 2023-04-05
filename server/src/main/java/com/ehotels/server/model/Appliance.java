package com.ehotels.server.model;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Appliance {
    private int appliance_id;
    private String name;

    public int getAppliance_id() {
        return appliance_id;
    }

    public void setAppliance_id(int appliance_id) {
        this.appliance_id = appliance_id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Appliance{" +
                "appliance_id=" + appliance_id+
                "name='" + name + '\'' +
                '}';
    }
}
