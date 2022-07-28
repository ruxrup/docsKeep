class dataClass {
  String title;
  String name = "";
  int number;
  int cvv;
  String address;
  int zip;
  int phone;

  dataClass({
    required this.title,
    this.name = "",
    this.number = 0,
    this.cvv = 0,
    this.address = "",
    this.zip = 0,
    this.phone = 0,
  });

  factory dataClass.fromJson(Map<String, dynamic> json) {
    return dataClass(
        title: json["title"],
        number: json["number"],
        cvv: json["cvv"],
        address: json["address"],
        zip: json["zip"],
        phone: json["phone"]);
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "name": name,
        "number": number,
        "cvv": cvv,
        "address": address,
        "zip": zip,
        "phone": phone,
      };

  static parse(decode) {}
}

List<dynamic> data_list = [];
