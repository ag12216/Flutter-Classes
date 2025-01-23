class LoginResponse2Response {
  int? id;
  String? firstName;
  String? lastName;
  String? memberType;
  String? phone;
  String? email;
  String? profileImage;
  bool? isAvailableRent;
  String? userType;
  String? idType;
  String? identityCard;
  String? identityNumber;
  int? totalMember;
  String? address;
  String? alternateContactNo;
  int? societyId;
  bool? active;
  String? createdAt;
  String? societyName;
  String? societyLogo;
  String? societyImage;
  int? flatNo;
  int? flatId;
  int? wingId;
  String? wing;
  String? floorNo;
  int? isOnRent;
  String? token;
  String? refreshToken;

  static LoginResponse2Response shared = LoginResponse2Response._();
  LoginResponse2Response._();

  LoginResponse2Response(
      {this.id,
      this.firstName,
      this.lastName,
      this.memberType,
      this.phone,
      this.email,
      this.profileImage,
      this.isAvailableRent,
      this.userType,
      this.idType,
      this.identityCard,
      this.identityNumber,
      this.totalMember,
      this.address,
      this.alternateContactNo,
      this.societyId,
      this.active,
      this.createdAt,
      this.societyName,
      this.societyLogo,
      this.societyImage,
      this.flatNo,
      this.flatId,
      this.wingId,
      this.wing,
      this.floorNo,
      this.isOnRent,
      this.token,
      this.refreshToken});

  LoginResponse2Response.fromJson(Map<String, dynamic> json) {
    shared.id = json['id'];
    shared.firstName = json['first_name'];
    shared.lastName = json['last_name'];
    shared.memberType = json['member_type'];
    shared.phone = json['phone'];
    shared.email = json['email'];
    shared.profileImage = json['profile_image'];
    shared.isAvailableRent = json['is_available_rent'];
    shared.userType = json['user_type'];
    shared.idType = json['id_type'];
    shared.identityCard = json['identity_card'];
    shared.identityNumber = json['identity_number'];
    shared.totalMember = json['total_member'];
    shared.address = json['address'];
    shared.alternateContactNo = json['alternate_contact_no'];
    shared.societyId = json['society_id'];
    shared.active = json['active'];
    shared.createdAt = json['created_at'];
    shared.societyName = json['society_name'];
    shared.societyLogo = json['society_logo'];
    shared.societyImage = json['society_image'];
    shared.flatNo = json['flat_no'];
    shared.flatId = json['flat_id'];
    shared.wingId = json['wing_id'];
    shared.wing = json['wing'];
    shared.floorNo = json['floor_no'];
    shared.isOnRent = json['isOnRent'];
    shared.token = json['token'];
    shared.refreshToken = json['refresh_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = shared.id;
    data['first_name'] = shared.firstName;
    data['last_name'] = shared.lastName;
    data['member_type'] = shared.memberType;
    data['phone'] = shared.phone;
    data['email'] = shared.email;
    data['profile_image'] = shared.profileImage;
    data['is_available_rent'] = shared.isAvailableRent;
    data['user_type'] = shared.userType;
    data['id_type'] = shared.idType;
    data['identity_card'] = shared.identityCard;
    data['identity_number'] = shared.identityNumber;
    data['total_member'] = shared.totalMember;
    data['address'] = shared.address;
    data['alternate_contact_no'] = shared.alternateContactNo;
    data['society_id'] = shared.societyId;
    data['active'] = shared.active;
    data['created_at'] = shared.createdAt;
    data['society_name'] = shared.societyName;
    data['society_logo'] = shared.societyLogo;
    data['society_image'] = shared.societyImage;
    data['flat_no'] = shared.flatNo;
    data['flat_id'] = shared.flatId;
    data['wing_id'] = shared.wingId;
    data['wing'] = shared.wing;
    data['floor_no'] = shared.floorNo;
    data['isOnRent'] = shared.isOnRent;
    data['token'] = shared.token;
    data['refresh_token'] = shared.refreshToken;
    return data;
  }
}
