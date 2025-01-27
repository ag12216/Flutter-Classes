// {
    // "id": 1,
    // "first_name": "Iron",
    // "last_name": "Man",
//     "member_type": "ADMIN",
//     "phone": "8888888888",
//     "email": "iron@man.com",
//     "profile_image": "http://pioneer-growth.com:8001/media/images/image_picker_C320E1AE-747A-4A85-9634-D8723108FA60-36573-000011B3502A62BF.jpg",
//     "is_available_rent": false,
//     "user_type": "Owner",
//     "id_type": "Pancard",
//     "identity_card": null,
//     "identity_number": "NHYUH7876",
//     "total_member": 4,
//     "address": "Ostwal Woods",
//     "alternate_contact_no": "8789990909",
//     "society_id": 1,
//     "active": true,
//     "created_at": "2024-12-28T08:14:22.111898Z",
//     "society_name": "Ostwal Woods",
//     "society_logo": null,
//     "society_image": null,
//     "flat_no": 101,
//     "flat_id": 1,
//     "wing_id": 1,
//     "wing": "A",
//     "floor_no": "G",
//     "isOnRent": 1,
//     "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzM3OTgzMDQ5LCJpYXQiOjE3Mzc5ODEyNDksImp0aSI6Ijc1NTQ5NWFiMTUzNzQ1MWY4OTVhNGVjMjVlY2EyZjIzIiwidXNlcl9pZCI6MX0.QAnz-s48j1BYEe-WBICKNc7SzISQ7VmSc2KQ10BXFsk",
//     "refresh_token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTczODU4NjA0OSwiaWF0IjoxNzM3OTgxMjQ5LCJqdGkiOiJlOTU4Y2NhOTEyZGU0MDYxYWZiOTNhYmZiODIzNmQ2NSIsInVzZXJfaWQiOjF9.rTAr_N7CZr7O9rFLIodFKa_2uIe-nAl6_fUIEctGUTY"
// }

// {
//  "id": 1,
//   "first_name": "Iron",
//   "last_name": "Man"
// }

// JSON to MODEL

class ResponseLogin {
  int? id;
  String? firstName;
  String? lastName;

// Primary Constructor
  // ResponseLogin(){

  // }

// Secondary Constructor
  ResponseLogin.jsonToModel(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String,dynamic> modelToJson(){
    Map<String,dynamic> data = {};
    data['id'] = id;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    return data;
  }




}