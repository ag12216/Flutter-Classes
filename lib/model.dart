// {
//     "userId": 1,
//     "id": 1,
//     "title": "delectus aut autem",
//     "completed": false
//   }

class ToDoModel {
  int? userID;
  int? id;
  String? title;
  bool? completed;

  // Secondary Constructor
  ToDoModel.fromJson(Map<String, dynamic> json){
      userID = json['userId'];
      id = json['id'];
      title = json['title'];
      completed = json['completed'];
  }
}