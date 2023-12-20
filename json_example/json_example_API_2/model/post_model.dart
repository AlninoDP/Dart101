class PostModel {
  final int postId;
  final String title;
  final String content;

  PostModel({required this.postId, required this.content, required this.title});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
        postId: json['postId'], content: json['content'], title: json['title']);
  }
}
