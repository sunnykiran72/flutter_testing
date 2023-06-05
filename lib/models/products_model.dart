class ProductModel {
  ProductMaster? productMaster;
  Member? member;
  List? uploadProductImages;
  List<ProductImages>? productImages;
  List? productVideo;

  ProductModel(
      {this.productMaster,
      this.member,
      this.uploadProductImages,
      this.productImages,
      this.productVideo});

  ProductModel.fromJson(Map<String, dynamic> json) {
    productMaster = json['productMaster'] != null
        ? ProductMaster.fromJson(json['productMaster'])
        : null;
    member =
        json['member'] != null ?  Member.fromJson(json['member']) : null;
    uploadProductImages = json['uploadProductImages'];
    if (json['productImages'] != null) {
      productImages = <ProductImages>[];
      json['productImages'].forEach((v) {
        productImages!.add( ProductImages.fromJson(v));
      });
    }
  }

}

class ProductMaster {
  int? productID;
  String? productCode;
  String? productName;
  int? productType;
  int? gender;
  int? breedType;
  String? breed;
  int? sellerID;
  String? talents;
  String? productBrand;
  String? fightingRecord;
  int? age;
  String? dateOfBirth;
  int? uom;
  double? weight;
  double? standardPrice;
  double? discount;
  String? currency;
  int? paymentOption;
  String? productImage;
  String? remarks;
  bool? isActive;
  bool? isAvailable;
  int? stockQty;
  String? createdOn;
  String? modifiedOn;
  String? province;
  String? productTypeDesc;
  String? genderDesc;
  String? breedTypeDesc;
  String? sellerName;
  String? uomDesc;
  String? paymentOptionDesc;
  String? breedNames;
  int? ageType;
  String? ageTypeDescription;
  int? productLikesCount;

  ProductMaster(
      {this.productID,
      this.productCode,
      this.productName,
      this.productType,
      this.gender,
      this.breedType,
      this.breed,
      this.sellerID,
      this.talents,
      this.productBrand,
      this.fightingRecord,
      this.age,
      this.dateOfBirth,
      this.uom,
      this.weight,
      this.standardPrice,
      this.discount,
      this.currency,
      this.paymentOption,
      this.productImage,
      this.remarks,
      this.isActive,
      this.isAvailable,
      this.stockQty,
      this.createdOn,
      this.modifiedOn,
      this.province,
      this.productTypeDesc,
      this.genderDesc,
      this.breedTypeDesc,
      this.sellerName,
      this.uomDesc,
      this.paymentOptionDesc,
      this.breedNames,
      this.ageType,
      this.ageTypeDescription,
      this.productLikesCount});

  ProductMaster.fromJson(json) {
    productID = json['productID'];
    productCode = json['productCode'];
    productName = json['productName'];
    productType = json['productType'];
    gender = json['gender'];
    breedType = json['breedType'];
    breed = json['breed'];
    sellerID = json['sellerID'];
    talents = json['talents'];
    productBrand = json['productBrand'];
    fightingRecord = json['fightingRecord'];
    age = json['age'];
    dateOfBirth = json['dateOfBirth'];
    uom = json['uom'];
    weight = json['weight'];
    standardPrice = json['standardPrice'];
    discount = json['discount'];
    currency = json['currency'];
    paymentOption = json['paymentOption'];
    productImage = json['productImage'];
    remarks = json['remarks'];
    isActive = json['isActive'];
    isAvailable = json['isAvailable'];
    stockQty = json['stockQty'];
    createdOn = json['createdOn'];
    modifiedOn = json['modifiedOn'];
    province = json['province'];
    productTypeDesc = json['productTypeDesc'];
    genderDesc = json['genderDesc'];
    breedTypeDesc = json['breedTypeDesc'];
    sellerName = json['sellerName'];
    uomDesc = json['uomDesc'];
    paymentOptionDesc = json['paymentOptionDesc'];
    breedNames = json['breedNames'];
    ageType = json['ageType'];
    ageTypeDescription = json['ageTypeDescription'];
    productLikesCount = json['productLikesCount'];
  }

}

class Member {
  int? userId;
  String? userName;
  String? password;
  String? firstName;
  String? lastName;
  String? emailId;
  String? mobileNo;
  int? memberType;
  String? otp;
  bool? isOtpsent;
  String? otpsentDate;
  bool? isResendOtp;
  bool? isOtpverified;
  bool? isActive;
  String? createdOn;
  String? aboutUs;
  String? website;
  String? token;
  String? profilePhoto;
  bool? isAcceptedTermsConditions;
  String? fileName;
  String? profileImages;
  String? bannerImages;
  String? memberImages;
  String? memberBannerImages;

  Member(
      {this.userId,
      this.userName,
      this.password,
      this.firstName,
      this.lastName,
      this.emailId,
      this.mobileNo,
      this.memberType,
      this.otp,
      this.isOtpsent,
      this.otpsentDate,
      this.isResendOtp,
      this.isOtpverified,
      this.isActive,
      this.createdOn,
      this.aboutUs,
      this.website,
      this.token,
      this.profilePhoto,
      this.isAcceptedTermsConditions,
      this.fileName,
      this.profileImages,
      this.bannerImages,
      this.memberImages,
      this.memberBannerImages});

  Member.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    userName = json['userName'];
    password = json['password'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    emailId = json['emailId'];
    mobileNo = json['mobileNo'];
    memberType = json['memberType'];
    otp = json['otp'];
    isOtpsent = json['isOtpsent'];
    otpsentDate = json['otpsentDate'];
    isResendOtp = json['isResendOtp'];
    isOtpverified = json['isOtpverified'];
    isActive = json['isActive'];
    createdOn = json['createdOn'];
    aboutUs = json['aboutUs'];
    website = json['website'];
    token = json['token'];
    profilePhoto = json['profilePhoto'];
    isAcceptedTermsConditions = json['isAcceptedTermsConditions'];
    fileName = json['fileName'];
    profileImages = json['profileImages'];
    bannerImages = json['bannerImages'];
    memberImages = json['memberImages'];
    memberBannerImages = json['memberBannerImages'];
  }

}

class ProductImages {
  int? imageId;
  String? imageName;
  int? productId;
  int? sellerId;
  bool? isActive;
  String? createdOn;
  String? contentType;

  ProductImages(
      {this.imageId,
      this.imageName,
      this.productId,
      this.sellerId,
      this.isActive,
      this.createdOn,
      this.contentType});

  ProductImages.fromJson(json) {
    imageId = json['imageId'];
    imageName = json['imageName'];
    productId = json['productId'];
    sellerId = json['sellerId'];
    isActive = json['isActive'];
    createdOn = json['createdOn'];
    contentType = json['contentType'];
  }


}
