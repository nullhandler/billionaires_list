class BillionaireItem{
  String name;
  int age;
  int worth;
  String state;
  String country;
  int rank;
  String imageUrl;
  String source;
  String industry;

  BillionaireItem(var s)
    : name = s["name"],
      age = s["age"],
      worth = s["worth"],
      state = s["state"],
      country = s["country"],
      rank = s["rank"],
      imageUrl = "https:" + getImageUrl(s),
      source = s["source"],
      industry = s["industry"];

  static getImageUrl(var st){
    return st["squareImage"] ??  "//specials-images.forbesimg.com/imageserve/5ab944eda7ea432fbc1d2d9c/416x416.jpg?background=000000&cropX1=0&cropX2=400&cropY1=0&cropY2=400";
  }
}