class ProductListModel {
 late double? productID;
 late String? productCode;
 late String? productName;
 late double productType;
 late double breedType;
 late double gender;
 late double sellerID;
 late double uom;
 late double standardPrice;
 late double weight;
 late double discount;
 late double paymentOption;
 late String? currency;
 late String? breed;
  String? talents;
  String? fightingRecord;
 late String? productBrand;
 late String? dateOfBirth;
 late double age;
 late double ageType;
 late String? productImage;
 late String? remarks;
late bool? isActive;
 late bool? isAvailable;
 late double stockQty;
late  String? province;
 late String? createdOn;
 late String? modifiedOn;
 late String? productTypeDesc;
 late String? genderDesc;
 late String? breedTypeDesc;
 late String?  sellerName;
 late String? uomDesc;
 late String? paymentOptionDesc;
 late String? breedNames;
 late String? ageTypeDescription;
 late double productLikesCount;
 late double productCommentsCount;
 late double sellerFollowersCount;
 late bool hasVideo;
 late String? profilePhoto;
  String? videoName;

  ProductListModel(
      {
      required this.productID,
      required this.productCode,
      required this.productName,
      required this.productType,
      required this.gender,
      required this.breedType,
      required this.sellerID,
      required this.uom,
      required this.standardPrice,
      required this.weight,
      required this.discount,
      required this.paymentOption,
      required this.currency,
      required this.breed,
      required this.talents,
      required this.fightingRecord,
      required this.productBrand,
      required this.dateOfBirth,
      required this.age,
      required this.ageType,
      required this.productImage,
      required this.remarks,
      required this.isActive,
      required this.isAvailable,
      required this.stockQty,
      required this.province,
      required this.createdOn,
      required this.modifiedOn,
      required this.productTypeDesc,
      required this.genderDesc,
      required this.breedTypeDesc,
      required this.sellerName,
      required this.uomDesc,
      required this.paymentOptionDesc,
      required this.breedNames,
      required this.ageTypeDescription,
      required this.productLikesCount,
      required this.productCommentsCount,
      required this.sellerFollowersCount,
      required this.hasVideo,
      required this.videoName,
      required this.profilePhoto});

  ProductListModel.fromJson (json) {
    productID = json['productID'].toDouble();
    productCode = json['productCode'];
    productName = json['productName'];
    productType = json['productType'].toDouble();
    gender = json['gender'].toDouble();
    breedType = json['breedType'].toDouble();
    sellerID = json['sellerID'].toDouble();
    uom = json['uom'].toDouble();
    standardPrice = json['standardPrice'];
    weight = json['weight'];
    discount = json['discount'];
    paymentOption = json['paymentOption'].toDouble();
    currency = json['currency'];
    breed = json['breed'];
    talents = json['talents'];
    fightingRecord = json['fightingRecord'];
    productBrand = json['productBrand'];
    dateOfBirth = json['dateOfBirth'];
    age = json['age'].toDouble();
    ageType = json['ageType'].toDouble();
    productImage = json['productImage'];
    remarks = json['remarks'];
    isActive = json['isActive'];
    isAvailable = json['isAvailable'];
    stockQty = json['stockQty'].toDouble();
    province = json['province'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    productTypeDesc = json['productTypeDesc'];
    genderDesc = json['genderDesc'];
    breedTypeDesc = json['breedTypeDesc'];
    sellerName = json['sellerName'];
    uomDesc = json['uomDesc'];
    paymentOptionDesc = json['paymentOptionDesc'];
    breedNames = json['breedNames'];
    ageTypeDescription = json['ageTypeDescription'];
    productLikesCount = json['productLikesCount'].toDouble();
    productCommentsCount = json['productCommentsCount'].toDouble();
    sellerFollowersCount = json['sellerFollowersCount'].toDouble();
    hasVideo = json['hasVideo'];
    videoName = json['videoName'];
    profilePhoto = json['profilePhoto'];
  }
}
