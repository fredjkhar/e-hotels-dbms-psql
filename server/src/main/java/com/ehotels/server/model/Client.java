package com.ehotels.server.model;
import lombok.NoArgsConstructor;

@NoArgsConstructor
public class Client {
    private int NAS_client;
    private String FirstName;
    private String LastName;
    private int age;
    private int streetNum;
    private String street;
    private String city;
    private String province;
    private String country;
    private String postalCode;
    private int phoneNum;
    private String email;
    private int RegistrationDate;
    private int password;
    public int getNAS_client() {
        return NAS_client;
    }
    public void setNAS_client(int nAS_client) {
        NAS_client = nAS_client;
    }
    public String getFirstName() {
        return FirstName;
    }
    public void setFirstName(String firstName) {
        FirstName = firstName;
    }
    public String getLastName() {
        return LastName;
    }
    public void setLastName(String lastName) {
        LastName = lastName;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public int getStreetNum() {
        return streetNum;
    }
    public void setStreetNum(int streetNum) {
        this.streetNum = streetNum;
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
    public String getPostalCode() {
        return postalCode;
    }
    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
    public int getPhoneNum() {
        return phoneNum;
    }
    public void setPhoneNum(int phoneNum) {
        this.phoneNum = phoneNum;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public int getRegistrationDate() {
        return RegistrationDate;
    }
    public void setRegistrationDate(int registrationDate) {
        RegistrationDate = registrationDate;
    }
    public int getPassword() {
        return password;
    }
    public void setPassword(int password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Client{" +
                "NAS_client=" + NAS_client +
                "First Name=" + FirstName +
                ", Last Name=" + LastName +
                ", Age='" + age + '\'' +
                ", Street number='" + streetNum + '\'' +
                ", Street=" + street+
                ", city='" + city + '\'' +
                ", province='" + province + '\'' +
                ", country='" + country + '\'' +
                ", postal_code='" + postalCode + '\'' +
                ", phone number='" + phoneNum + '\'' +
                ", email='" + email + '\'' +
                ", Registration date='" + RegistrationDate + '\'' +
                ", password='" + password + '\'' +
               
                '}';
    }


    
}
