class dataClass {
  String title;
  String name = "";
  int number;
  int cvv;
  String address;
  int zip;
  int phone;
  var id;

  dataClass({
    required this.title,
    this.name = "",
    this.number = 0,
    this.cvv = 0,
    this.address = "",
    this.zip = 0,
    this.phone = 0,
    this.id = "",
  });

  factory dataClass.fromJson(Map<String, dynamic> json) {
    return dataClass(
        title: json["title"],
        number: json["number"],
        cvv: json["cvv"],
        address: json["address"],
        zip: json["zip"],
        phone: json["phone"],
        id: json["id"]);
  }

  Map<String, dynamic> toJson() => {
        "title": title,
        "name": name,
        "number": number,
        "cvv": cvv,
        "address": address,
        "zip": zip,
        "phone": phone,
        "id": id,
      };

  static parse(decode) {}
}

List<dynamic> data_list = [];
