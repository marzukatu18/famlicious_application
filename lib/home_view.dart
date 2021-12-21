import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import 'create_post.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          title: Text(
            'Timeline',
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CreatePost();
                }));
              },
              icon: Icon(
                UniconsLine.plus_square,
                color: Theme.of(context).iconTheme.color,
              ),
            )
          ],
        ),
        body: ListView(padding: EdgeInsets.all(10), children: [
          Card(
            color: Theme.of(context).cardColor,
            child: Column(children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/cliffy.jpg'),
                      radius: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Ibra OK',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text('1 minute ago',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  )),
                      Icon(Icons.more_horiz,
                          color: Theme.of(context).iconTheme.color)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'That was the first time i flew out of singapore in three years',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/cliffy.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Icon(
                        Icons.thumb_up,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      Icon(
                        Icons.message,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.facebook,
                    color: Theme.of(context).iconTheme.color,
                  ),
                ],
              )
            ]),
          ),
        ]));
  }
}
