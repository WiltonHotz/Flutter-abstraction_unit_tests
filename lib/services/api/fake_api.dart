import 'package:abstraction/datamodels/api_models.dart';
import 'package:abstraction/services/api/api.dart';

class FakeApi implements Api {
  @override
  Future<List<Comment>> getCommentsForPost(int postId) async {
    await Future.delayed(Duration(seconds: 1));

    if(postId == 1) {
      return List<Comment>.generate(10, (index) => Comment());
    }

    return null;
  }

  @override
  Future<List<Post>> getPostsForUser(int userId) async {
    await Future.delayed(Duration(seconds: 1));

    if(userId == 1) {
      return List<Post>.generate(10, (index) => Post());
    }

    return null;
  }

  @override
  Future<User> getUser(int userId) async {
    await Future.delayed(Duration(seconds: 1));

    if(userId == 1) {
      return User(
        name: 'wilton',
        phoneNumber: '555-555-55'
      );
    }
    return null;
  }

  @override
  Future<LoginResponse> login({String username, String password}) async {
    await Future.delayed(Duration(seconds: 1));

    if(username == 'wilton') {
      return LoginResponse(userId: 1);
    }

    if(username == 'bad user') {
      return LoginResponse(
        success: false,
        message: 'User does not exist'
      );
    }

    return null;
  }

}