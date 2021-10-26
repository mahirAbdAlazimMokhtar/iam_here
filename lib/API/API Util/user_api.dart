// class AuthorsAPI {
//   Future<List<User>> fetchAllAuthors() async {
//     List<User> authors = [];
//     String allAuthorsApi = base_api + all_authors_api;
//     var response = await http.get(allusersApi);
//     if (response.statusCode == 200) {
//       var jsonData = jsonDecode(response.body);
//       var data = jsonData["data"];
//       for (var item in data) {
//         User user = User(
//             item['id'].toString(),
//             item['name'].toString(),
//             item['phone'].toString(),
//             item['start_time'].toString(),
//             item['end_time'].toString(),
//             item['location'].toString());
//         user.add(user);
//       }
//     }
//     return authors;
//   }
// }
