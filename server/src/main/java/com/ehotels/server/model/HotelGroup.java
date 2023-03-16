package com.ehotels.server.model;

public class HotelGroup {
    private int id;
    private int hotels_nbr;
    private String phone_nbr;
    private String email;
    private int unit_nbr;
    private String address;
    private String city;
    private String province;
    private String postal_code;
    private String country;

    public HotelGroup() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHotels_nbr() {
        return hotels_nbr;
    }

    public void setHotels_nbr(int hotels_nbr) {
        this.hotels_nbr = hotels_nbr;
    }

    public String getPhone_nbr() {
        return phone_nbr;
    }

    public void setPhone_nbr(String phone_nbr) {
        this.phone_nbr = phone_nbr;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getUnit_nbr() {
        return unit_nbr;
    }

    public void setUnit_nbr(int unit_nbr) {
        this.unit_nbr = unit_nbr;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    @Override
    public String toString() {
        return "HotelGroup{" +
                "group_id=" + id +
                ", hotels_nbr=" + hotels_nbr +
                ", phone_nbr='" + phone_nbr + '\'' +
                ", email='" + email + '\'' +
                ", unit_nbr=" + unit_nbr +
                ", address='" + address + '\'' +
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", country='" + country + '\'' +
                '}';
    }
}


