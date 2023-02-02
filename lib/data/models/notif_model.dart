class NotifFields {
  static String id = "id";
  static String dateTime = "dateTime";
  static String description = "description";
  static String newsTitle = "newsTitle";
  static String newsImage = "newsImage";
}

class NotifModel {
  final int? id;
  final String dateTime;
  final String description;
  final String newsTitle;
  final String newsImage;

  NotifModel(
      {this.id,
        required this.dateTime,
        required this.description,
        required this.newsTitle,
        required this.newsImage});

  NotifModel copyWith({
    int? id,
    String? dateTime,
    String? description,
    String? newsTitle,
    String? newsImage,
  }) =>
      NotifModel(
        id: id ?? this.id,
        dateTime: dateTime ?? this.dateTime,
        description: description ?? this.description,
        newsTitle: newsTitle ?? this.newsTitle,
        newsImage: newsImage ?? this.newsImage,
      );

  static NotifModel fromJson(Map<String, Object?> json) => NotifModel(
    id: json[NotifFields.id] as int? ?? 0,
    dateTime: json[NotifFields.dateTime] as String? ?? "",
    newsTitle: json[NotifFields.newsTitle] as String? ?? "",
    newsImage: json[NotifFields.newsImage] as String? ?? "",
    description: json[NotifFields.description] as String? ?? "",
  );

  Map<String, Object?> toJson() => {
    NotifFields.id: id,
    NotifFields.newsTitle: newsTitle,
    NotifFields.dateTime: dateTime,
    NotifFields.description: description,
    NotifFields.newsImage: newsImage,
  };
}