import 'package:flutter/material.dart';
import '../apis/blog.apis.dart';
import '../model/blog.mode.dart';
import '../screens/details_screen.dart';

class BlogListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Blog>>(
      future: fetchBlogs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final blog = snapshot.data![index];
                return Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 20.0),
                    padding: EdgeInsets.all(12.0),
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(26.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlogDetailsScreen(
                                id: blog.id!,
                              ),
                            ));
                      },
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            child: Hero(
                              tag: "${blog.titre!}",
                              child: Container(
                                height: 100.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  image: DecorationImage(
                                    image: NetworkImage(blog.image!),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                              flex: 5,
                              child: Column(
                                children: [
                                  Text(
                                    blog.titre!,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(blog.description!,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white54,
                                      ))
                                ],
                              ))
                        ],
                      ),
                    ));
              },
            ),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('${snapshot.error}'));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
