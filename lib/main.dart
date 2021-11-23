
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PINTEREST',
      theme: new ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: new ImageTile(),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 3),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(3, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(4, 4),
];


List<Widget> _tiles = const <Widget>[
  const _ImageTile('https://picsum.photos/200/600/?random'),
  const _ImageTile('https://picsum.photos/201/600/?random'),
  const _ImageTile('https://picsum.photos/202/900/?random'),
  const _ImageTile('https://c.tenor.com/2gi5ucI5THgAAAAj/usagyuuun-note.gif'),
  const _ImageTile('https://picsum.photos/204/300/?random'),
  const _ImageTile('https://picsum.photos/205/300/?random'),
  const _ImageTile('https://picsum.photos/206/300/?random'),
  const _ImageTile('https://picsum.photos/207/300/?random'),
  const _ImageTile('https://picsum.photos/208/300/?random'),
  const _ImageTile('https://picsum.photos/209/300/?random'),
  const _ImageTile('https://picsum.photos/210/300/?random'),
  const _ImageTile('https://picsum.photos/211/300/?random'),
  const _ImageTile('https://picsum.photos/212/300/?random'),
  const _ImageTile('https://picsum.photos/213/300/?random'),
  const _ImageTile('https://picsum.photos/214/300/?random'),
  const _ImageTile('https://picsum.photos/215/300/?random'),
  const _ImageTile('https://picsum.photos/216/300/?random'),
  const _ImageTile('https://picsum.photos/217/300/?random'),
  const _ImageTile('https://picsum.photos/218/300/?random'),
  const _ImageTile('https://picsum.photos/219/300/?random'),
];

class ImageTile extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          //leading: Icon(Icon.menu),
          
          /*title: TextField(
            decoration: InputDecoration(
            icon:Icon(Icons.search),
            hintText:"search",
            ),
          ),*/
          actions: [
            /*Padding(
               padding: EdgeInsets.only(right: 20),
               child: Icon(Icons.apps),
               ),*/
            new IconButton(icon: Icon(Icons.apps), onPressed: () {}),
            new IconButton(icon: Icon(Icons.home), onPressed: () {}),
            new IconButton(icon: Icon(Icons.today), onPressed: () {}), 
            //actions: [
            new IconButton(icon: Icon(Icons.notifications), onPressed: () {}), 
            new IconButton(icon: Icon(Icons.chat), onPressed: () {}), 
            new IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
            new IconButton(icon: Icon(Icons.expand_more), onPressed: () {}),
            /*new IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.notifications), onPressed: () {}),
            new IconButton(
              padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.chat), onPressed: () {}),
            //new IconButton(icon: Icon(Icons.profile), onPressed: () {}),*/
          ],
          title: TextField(
            decoration: InputDecoration(
            icon:Icon(Icons.search),
            hintText:'search',
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            )));
  }
}

class _ImageTile extends StatefulWidget {
  const _ImageTile(this.gridImage);
  final gridImage;

  @override
  __ImageTileState createState() => __ImageTileState();

}
     
class __ImageTileState extends State<_ImageTile>{
  bool howering = true;
  @override
  Widget build(BuildContext context) {
    return new Card(
      color: const Color(0x00000000),
      //onTapDown: (_) =>setTapped(ImageTile, isTapped:true),
      elevation: 3.0,
      child: InkWell(
        onTap: () {
        },
        onHover: (isHowering){
          setState(() {
            howering = isHowering;
          });
        },
           child: howering ? Container(
             child: Stack(
               children: [
                 Opacity(opacity: 0.8,
                 child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.gridImage),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                ),
                 ),
                  Positioned(
                   bottom: 0.0,
                   left: 0.0,
                   child: Container(
                      child: Icon(Icons.call_made),
                    ),
                  ),
                  Positioned(
                   bottom: 0.0,
                   right: 60.0,
                   child: Container(
                      child: Icon(Icons.share),
                    ),
                  ),
                  Positioned(
                   bottom: 0.0,
                   right: 10.0,
                   child: Container(
                      child: Icon(Icons.more),
                    ),
                  ),
                  Positioned(
                   top: 10.0,
                   right: 25.0,
                   child: Container(
                      child: Icon(Icons.save),
                    ),
                  ),
               ],
             )
           ):
          //return AnimatedCrossFade(firstChild: firstChild, secondChild: secondChild, crossFadeState: crossFadeState, duration: duration)
         new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new NetworkImage(widget.gridImage),
                fit: BoxFit.cover,
              ),
              borderRadius: new BorderRadius.all(const Radius.circular(10.0)),
            )
        ),
      ),
    );
  }
}