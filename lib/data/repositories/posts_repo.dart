import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../models/posts_model.dart';

class PostRepository {
  Future<List<Post>> fetchPosts() async {
    try {
      final response = await http.get(Uri.parse(
          'https://jsonplaceholder.typicode.com/posts')); //Fetch api response

      if (response.statusCode == 200) {
        final List decoded = jsonDecode(response.body); // decode json
        return decoded
            .map((json) => Post.fromJson(json)).toList();

            // Post(
            //     id: json['id'], title: json['title'], body: json['body']))
            // .toList();// assign decoded value in form of post model
      } else {
        throw Exception('Server error: ${response.statusCode}');
      } // Exceptons
    } on SocketException {
      throw Exception('No Internet connection');
    } on HttpException {
      throw Exception('Could not find the post');
    } on FormatException {
      throw Exception('Bad response format');
    } catch (e) {
      throw Exception('Unexpected error occurred');
    }
  }
}
