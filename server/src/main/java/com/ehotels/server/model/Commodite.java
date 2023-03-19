package com.ehotels.server.model;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Commodite {
    private int idComm;
    private int name;
    private int num;
    public int getIdComm() {
        return idComm;
    }
    public void setIdComm(int idComm) {
        this.idComm = idComm;
    }
    public int getName() {
        return name;
    }
    public void setName(int name) {
        this.name = name;
    }
    public int getNum() {
        return num;
    }
    public void setNum(int num) {
        this.num = num;
    }
    @Override
    public String toString() {
        return "Commodite{" +
                "id=" + idComm+
                "name=" + name +
                ", num =" + num +
                '}';
    }
}
