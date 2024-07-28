void main() {
  // User().postComment();
  // Moderator().postComment();
  // Moderator().deleteComment();
  // Publisher().postComment();
  // Publisher().publishArticle();
  // Admin().postComment();
  Admin().publishArticle();
  Admin().deleteComment();
}

class User {
  void postComment() {
    print("Posted Comment");
  }
}

class Moderator extends User {
  void deleteComment() {
    print("Comment Deleted");
  }
}

class Publisher extends User with CanPublishArticle {}

class Admin extends Moderator with CanPublishArticle {}

// Mixins are a way of defining code that can be reused in multiple class hierarchies.
// They are intended to provide member implementations
mixin CanPublishArticle {
  void publishArticle() {
    print("Article Published");
  }
}
