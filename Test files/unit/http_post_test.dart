import 'package:assignment/api/http/http_post.dart';
import 'package:assignment/api/response/response_f_post.dart';
import 'package:assignment/api/response/response_post.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'http_post_test.mocks.dart';

@GenerateMocks([HttpConnectPost])
void main() {
  final MockHttpConnectPost _mockHttpPost = MockHttpConnectPost();
  final HttpConnectPost _httpConnectPost = HttpConnectPost();

  group("MockPostHttp", () {
    test("singlePost", () async {
      GetPost singlePost = GetPost(
        id: "61d42bd3c72aeae54c1fa4b2",
        user_id: {
          "_id": "61bc143b4142c6450fc6bb01",
          "username": "gauri003",
          "profile_pic": "joker.jpg"
        },
        caption: "Flying in the Sky",
        description: "Best sky diving ever.",
        attach_file: ["image1.png", "image2.png"],
        tag_friend: [
          {
            "_id": "61bc111e21400e9713db975a",
            "username": "nishanrana",
            "profile_pic": "logan.jpg"
          }
        ],
        like_num: 6,
        comment_num: 4,
        report_num: 0,
      );

      when(_mockHttpPost.getSinglePost("61d42bd3c72aeae54c1fa4b2"))
          .thenAnswer((_) async => singlePost);

      expect(await _httpConnectPost.getSinglePost("61d42bd3c72aeae54c1fa4b2"),
          isA<GetPost>());
    });

    test("multiplePost", () async {
      GetFollowedPosts followedPosts = GetFollowedPosts(
        followedPosts: [
          GetPost(
              id: "61d42bd3c72aeae54c1fa4b2",
              user_id: {
                "_id": "61bc143b4142c6450fc6bb01",
                "username": "gauri003",
                "profile_pic": "joker.jpg"
              },
              caption: "Flying in the Sky",
              description: "Best sky diving ever.",
              attach_file: ["image1.png", "image2.png"],
              tag_friend: [
                {
                  "_id": "61bc111e21400e9713db975a",
                  "username": "nishanrana",
                  "profile_pic": "logan.jpg"
                }
              ],
              like_num: 6,
              comment_num: 4,
              report_num: 0)
        ],
        liked: [false],
        commented: [false],
      );

      when(_mockHttpPost.getFollowedPost()).thenAnswer(
          (_) async => followedPosts);

      expect(await _httpConnectPost.getFollowedPost(), isA<GetFollowedPosts>());
    });
  });
}
