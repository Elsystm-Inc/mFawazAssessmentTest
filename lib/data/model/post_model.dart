class Post {
  String id;
  String name;
  String question;
  String image;
  String date;
  String content;
  String noReplies;
  String noShares;
  String noUps;
  List<Post> replies;

  Post({
    this.id,
    this.name,
    this.question,
    this.image,
    this.date,
    this.content,
    this.noReplies,
    this.noShares,
    this.noUps,
    this.replies,
  });

  factory Post.fromJson(Map<String, dynamic> data) {
    var list = data['replies'] as List;
    List<Post> repliesList = [];
    if (list != null) {
      for (int i = 0; i < list.length; i++) {
        Map<String, dynamic> m = list[i];
        repliesList.add(Post.fromJson(m));
      }
    }
    return Post(
      id: data['id'],
      name: data['name'],
      question: data['question'],
      image: data['image'],
      date: data['date'],
      content: data['content'],
      noReplies: data['no_replies'],
      noShares: data['no_shares'],
      noUps: data['no_ups'],
      replies: repliesList,
    );
  }
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'question': question,
        'image': image,
        'date': date,
        'no_replies': noReplies,
        'no_shares': noShares,
        'content': content,
        'no_ups': noUps,
        'replies': replies,
      };

  Map<String, dynamic> toUpdateJson() => {
        'id': id,
        'name': name,
        'question': question,
        'image': image,
        'date': date,
        'no_replies': noReplies,
        'no_shares': noShares,
        'content': content,
        'no_ups': noUps,
        'replies': replies,
      };
}
