class Location{
  Location(this.address, this.city, this.state, this.zip);

  String address;
  String city;
  String state;
  String zip;

  String getAddress(){
    return address;
  }
  String getCity(){
    return city;
  }
  String getState(){
    return state;
  }
  String getZip(){
    return zip;
  }

}