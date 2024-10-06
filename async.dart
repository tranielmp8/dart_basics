/*
  ASYNC - AWAIT - FUTURES
*/
// have to mark function as async
void main() async {
  print("---- ASYNC, AWAIT, & FUTURES---");
  // much like a Promise in Javascript
  // fetchPost().then((p) {
  //   print(p.title);
  //   print(p.userId);
  // });

//since this is marked as an async/await function - is is not Future anymore, but the return post
  final post = await fetchPost();
  print(post.title);
}

// this will take time so we put Future
Future<Post> fetchPost() {
  const delay = Duration(seconds: 3);

  // kind of like setTimeout in javascript
  return Future.delayed(delay, () {
    return Post('MY NEW POST', 123);
  });
}

class Post {
  String title;
  int userId;

  Post(this.title, this.userId);
}
