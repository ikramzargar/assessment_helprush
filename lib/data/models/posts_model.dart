class Post{
  int? id;
  String? title;
  String? email;
  String? body;

  Post({this.id, this.title, this.email, this.body});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    email = json['email'];
    body = json['body'];
  }
}