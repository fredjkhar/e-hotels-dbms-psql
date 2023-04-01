package com.ehotels.server.model;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Client {
    private int NAS_client;
    private String first_name;
    private String last_name;
    private int age;
    private int street_num;
    private String street;
    private String city;
    private String province;
    private String country;
    private String postal_code;
    private String phone_num;
    private String email;
    private String registration_date;
    private String password;

    public int getNAS_client() {
        return NAS_client;
    }

    public void setNAS_client(int NAS_client) {
        this.NAS_client = NAS_client;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getStreet_num() {
        return street_num;
    }

    public void setStreet_num(int street_num) {
        this.street_num = street_num;
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

    public String getPhone_num() {
        return phone_num;
    }

    public void setPhone_num(String phone_num) {
        this.phone_num = phone_num;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRegistration_date() {
        return registration_date;
    }

    public void setRegistration_date(String registration_date) {
        this.registration_date = registration_date;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Client{" +
                "NAS_client=" + NAS_client +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", age=" + age +
                ", street_num=" + street_num +
                ", street='" + street + '\'' +
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                ", country='" + country + '\'' +
                ", postal_code='" + postal_code + '\'' +
                ", phone_num='" + phone_num + '\'' +
                ", email='" + email + '\'' +
                ", registration_date='" + registration_date + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
