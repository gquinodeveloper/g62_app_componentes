class ResponseUserModel {
  ResponseUserModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<DataUserModel>? data;
  Support? support;

  factory ResponseUserModel.fromJson(Map<String, dynamic> json) =>
      ResponseUserModel(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<DataUserModel>.from(
            json["data"].map((x) => DataUserModel.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );
}

class DataUserModel {
  DataUserModel({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory DataUserModel.fromJson(Map<String, dynamic> json) => DataUserModel(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );
}
