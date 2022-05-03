List<Product> demoProducts = [
  Product(
      id: "6270073823c3818e6f8c1056",
      vendorId: "10",
      vendorName: "Anita Dongre Saree",
      productDescription: "Saree inspired by Indian Culture",
      category: "Traditional",
      unitPrice: 1200,
      availableSizes: "L",
      unitsInStock: 1,
      unitWeight: 12,
      picture:
          "https://www.anitadongre.com/media/catalog/product/cache/ec414261bdd71aec2a695bf24220a702/a/d/ad_s22rm104_pink_3.jpg?v=3",
      gender: "F"),
  Product(
      id: "627007b823c3818e6f8c1058",
      vendorId: "5",
      vendorName: "Versace Suit(used in Skyfall)",
      productDescription: "Tuxedo Design for Bond",
      category: "Formal",
      unitPrice: 1200,
      availableSizes: "S/L",
      unitsInStock: 2,
      unitWeight: 3,
      picture:
          "https://media.istockphoto.com/photos/male-fashion-model-in-tuxedo-picture-id1145911482?b=1&k=20&m=1145911482&s=170667a&w=0&h=FbxPbvoMdAOO0dtzqcwwZ_ZhAx05zsTC38yUCUtIQaM=",
      gender: "M"),
];

class Product {
  String? id;
  String? vendorId;
  String? vendorName;
  String? productDescription;
  String? category;
  int? unitPrice;
  String? availableSizes;
  int? unitsInStock;
  int? unitWeight;
  String? picture;
  String? gender;

  Product(
      {required this.id,
      required this.vendorId,
      required this.vendorName,
      required this.productDescription,
      required this.category,
      required this.unitPrice,
      required this.availableSizes,
      required this.unitsInStock,
      required this.unitWeight,
      required this.picture,
      required this.gender});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vendorId = json['vendorId'];
    vendorName = json['vendorName'];
    productDescription = json['productDescription'];
    category = json['category'];
    unitPrice = json['unitPrice'];
    availableSizes = json['availableSizes'];
    unitsInStock = json['unitsInStock'];
    unitWeight = json['unitWeight'];
    picture = json['picture'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['vendorId'] = this.vendorId;
    data['vendorName'] = this.vendorName;
    data['productDescription'] = this.productDescription;
    data['category'] = this.category;
    data['unitPrice'] = this.unitPrice;
    data['availableSizes'] = this.availableSizes;
    data['unitsInStock'] = this.unitsInStock;
    data['unitWeight'] = this.unitWeight;
    data['picture'] = this.picture;
    data['gender'] = this.gender;
    return data;
  }
}
