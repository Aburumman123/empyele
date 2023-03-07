class EmployeeModel {
  int? id;
  int? eskaId;
  String? userName;
  String? empNo;
  int? jobTitle;
  String? fullNameEn;
  String? fullNameAr;
  String? shortName;
  String? firstNameAr;
  String? secondNameAr;
  String? thirdNameAr;
  String? familyNameAr;
  String? firstNameEn;
  String? secondNameEn;
  String? thirdNameEn;
  String? familyNameEn;
  String? motherName;
  String? dob;
  String? birthPlace;
  int? nationalId;
  int? gender;
  int? martialStatus;
  bool? isResigned;
  String? resignedDate;
  String? address1;
  String? address2;
  String? mobile;
  String? email;
  String? picture;
  int? departmentId;
  int? branchId;
  Department? department;
  String? lastModifyDate;
  int? lastModifyUserId;
  String? effictaveDate;
  bool? declarationIsFilled;
  bool? declartionIsSigned;
  bool? declartionIsPosted;
  String? eskaUsername;

  EmployeeModel({
    this.id,
    this.eskaId,
    this.userName,
    this.empNo,
    this.jobTitle,
    this.fullNameEn,
    this.fullNameAr,
    this.shortName,
    this.firstNameAr,
    this.secondNameAr,
    this.thirdNameAr,
    this.familyNameAr,
    this.firstNameEn,
    this.secondNameEn,
    this.thirdNameEn,
    this.familyNameEn,
    this.motherName,
    this.dob,
    this.birthPlace,
    this.nationalId,
    this.gender,
    this.martialStatus,
    this.isResigned,
    this.resignedDate,
    this.address1,
    this.address2,
    this.mobile,
    this.email,
    this.picture,
    this.departmentId,
    this.branchId,
    this.department,
    this.lastModifyDate,
    this.lastModifyUserId,
    this.effictaveDate,
    this.declarationIsFilled,
    this.declartionIsSigned,
    this.declartionIsPosted,
    this.eskaUsername,
  });

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    eskaId = json['eskaId'];
    userName = json['userName'];
    empNo = json['empNo'];
    jobTitle = json['jobTitle'];
    fullNameEn = json['fullNameEn'];
    fullNameAr = json['fullNameAr'];
    shortName = json['shortName'];
    firstNameAr = json['firstNameAr'];
    secondNameAr = json['secondNameAr'];
    thirdNameAr = json['thirdNameAr'];
    familyNameAr = json['familyNameAr'];
    firstNameEn = json['firstNameEn'];
    secondNameEn = json['secondNameEn'];
    thirdNameEn = json['thirdNameEn'];
    familyNameEn = json['familyNameEn'];
    motherName = json['motherName'];
    dob = json['dob'];
    birthPlace = json['birthPlace'];
    nationalId = json['nationalId'];
    gender = json['gender'];
    martialStatus = json['martialStatus'];
    isResigned = json['isResigned'];
    resignedDate = json['resignedDate'];
    address1 = json['address1'];
    address2 = json['address2'];
    mobile = json['mobile'];
    email = json['email'];
    picture = json['picture'];
    departmentId = json['departmentId'];
    branchId = json['branchId'];
    department = json['department'] != null
        ? new Department.fromJson(json['department'])
        : null;
    lastModifyDate = json['lastModifyDate'];
    lastModifyUserId = json['lastModifyUserId'];
    effictaveDate = json['effictaveDate'];
    declarationIsFilled = json['declarationIsFilled'];
    declartionIsSigned = json['declartionIsSigned'];
    declartionIsPosted = json['declartionIsPosted'];
    eskaUsername = json['eskaUsername'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['eskaId'] = this.eskaId;
    data['userName'] = this.userName;
    data['empNo'] = this.empNo;
    data['jobTitle'] = this.jobTitle;
    data['fullNameEn'] = this.fullNameEn;
    data['fullNameAr'] = this.fullNameAr;
    data['shortName'] = this.shortName;
    data['firstNameAr'] = this.firstNameAr;
    data['secondNameAr'] = this.secondNameAr;
    data['thirdNameAr'] = this.thirdNameAr;
    data['familyNameAr'] = this.familyNameAr;
    data['firstNameEn'] = this.firstNameEn;
    data['secondNameEn'] = this.secondNameEn;
    data['thirdNameEn'] = this.thirdNameEn;
    data['familyNameEn'] = this.familyNameEn;
    data['motherName'] = this.motherName;
    data['dob'] = this.dob;
    data['birthPlace'] = this.birthPlace;
    data['nationalId'] = this.nationalId;
    data['gender'] = this.gender;
    data['martialStatus'] = this.martialStatus;
    data['isResigned'] = this.isResigned;
    data['resignedDate'] = this.resignedDate;
    data['address1'] = this.address1;
    data['address2'] = this.address2;
    data['mobile'] = this.mobile;
    data['email'] = this.email;
    data['picture'] = this.picture;
    data['departmentId'] = this.departmentId;
    data['branchId'] = this.branchId;
    if (this.department != null) {
      data['department'] = this.department!.toJson();
    }
    data['lastModifyDate'] = this.lastModifyDate;
    data['lastModifyUserId'] = this.lastModifyUserId;
    data['effictaveDate'] = this.effictaveDate;
    data['declarationIsFilled'] = this.declarationIsFilled;
    data['declartionIsSigned'] = this.declartionIsSigned;
    data['declartionIsPosted'] = this.declartionIsPosted;
    data['eskaUsername'] = this.eskaUsername;
    return data;
  }
}

class Department {
  int? eskaDepartmentId;
  int? id;
  String? descriptionAr;
  String? descriptionEn;
  String? departmentEmail;

  Department({
    this.eskaDepartmentId,
    this.id,
    this.descriptionAr,
    this.descriptionEn,
    this.departmentEmail,
  });

  Department.fromJson(Map<String, dynamic> json) {
    eskaDepartmentId = json['eskaDepartmentId'];
    id = json['id'];
    descriptionAr = json['descriptionAr'];
    descriptionEn = json['descriptionEn'];
    departmentEmail = json['departmentEmail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['eskaDepartmentId'] = this.eskaDepartmentId;
    data['id'] = this.id;
    data['descriptionAr'] = this.descriptionAr;
    data['descriptionEn'] = this.descriptionEn;
    data['departmentEmail'] = this.departmentEmail;
    return data;
  }
}
