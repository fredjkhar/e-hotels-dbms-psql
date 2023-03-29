package com.ehotels.server.model;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Hotel {

    private int hotel_id;
    private String name;
    private int street_number;
    private String street;
    private String city;
    private String province;
    private String country;
    private String postal_code;
    private String phone_number;
    private String email;
    private double rating;
    private int stars_nbr;
    private int min_price;
    private int hotel_group_id;


    public int getHotel_id() {
        return hotel_id;
    }

    public void setHotel_id(int hotel_id) {
        this.hotel_id = hotel_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStreet_number() {
        return street_number;
    }

    public void setStreet_number(int street_number) {
        this.street_number = street_number;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
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

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public int getStars_nbr() {
        return stars_nbr;
    }

    public void setStars_nbr(int stars_nbr) {
        this.stars_nbr = stars_nbr;
    }

    public int getMin_price() {
        return min_price;
    }

    public void setMin_price(int min_price) {
        this.min_price = min_price;
    }

    public int getHotel_group_id() {
        return hotel_group_id;
    }

    public void setHotel_group_id(int hotel_group_id) {
        this.hotel_group_id = hotel_group_id;
    }

    public String toString() {
        return "Hotel{" +
                "hotel_id=" + hotel_id +
                ", name='" + name + '\'' +
                ", street_number=" + street_number +
                ", street='" + street + '\'' +
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                ", country='" + country + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", email='" + email + '\'' +
                ", rating=" + rating +
                ", hotel_group_id=" + hotel_group_id +
                "}";
    }
}
