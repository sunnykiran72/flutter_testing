class ProductListModel {
    String availability;
    String categoryName;
    String categoryType;
    String department;
    String description;
    int foodQuantity;
    String gst;
    String image;
    String kitchen;
    String menuId;
    String particular;
    int price;
    String productId;
    String restaurantId;
    String timeFrom;
    String timeFrom2;
    String timeFrom3;
    String timeTo;
    String timeTo2;
    String timeTo3;

    ProductListModel({
        required this.availability,
        required this.categoryName,
        required this.categoryType,
        required this.department,
        required this.description,
        required this.foodQuantity,
        required this.gst,
        required this.image,
        required this.kitchen,
        required this.menuId,
        required this.particular,
        required this.price,
        required this.productId,
        required this.restaurantId,
        required this.timeFrom,
        required this.timeFrom2,
        required this.timeFrom3,
        required this.timeTo,
        required this.timeTo2,
        required this.timeTo3,
    });

    factory ProductListModel.fromJson(Map<String, dynamic> json) => ProductListModel(
        availability: json["availability"],
        categoryName: json["categoryName"],
        categoryType: json["categoryType"],
        department: json["department"],
        description: json["description"],
        foodQuantity: json["foodQuantity"],
        gst: json["gst"],
        image: json["image"],
        kitchen: json["kitchen"],
        menuId: json["menuId"],
        particular: json["particular"],
        price: json["price"],
        productId: json["productId"],
        restaurantId: json["restaurantId"],
        timeFrom: json["timeFrom"],
        timeFrom2: json["timeFrom2"],
        timeFrom3: json["timeFrom3"],
        timeTo: json["timeTo"],
        timeTo2: json["timeTo2"],
        timeTo3: json["timeTo3"],
    );

}