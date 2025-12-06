import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) =>
    List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
  String id;
  String name;
  String description;
  String category;
  String thumbnail;
  int itemViews;
  DateTime createdAt;
  bool isFeatured;
  int price;
  int? userId;
  String username;   

  ProductEntry({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.thumbnail,
    required this.itemViews,
    required this.createdAt,
    required this.isFeatured,
    required this.price,
    required this.username,
    this.userId,
  });

  factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        thumbnail: json["thumbnail"] ?? "",
        itemViews: json["item_views"] ?? 0,
        createdAt: DateTime.parse(json["created_at"]),
        isFeatured: json["is_featured"] ?? false,
        price: json["price"],
        userId: json["user_id"],                
        username: json["username"],             
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "category": category,
        "thumbnail": thumbnail,
        "item_views": itemViews,
        "created_at": createdAt.toIso8601String(),
        "is_featured": isFeatured,
        "price": price,
        "user_id": userId,
        "username": username,
      };
}