import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CoursePage extends StatefulWidget {
  List<String> links;
  var initialVideo;

  CoursePage({
    required this.links,
    this.initialVideo,
  });
  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  var questionNum;
  var speed = 1.0;
  late var videoLink = widget.initialVideo;

  @override
  late VideoPlayerController myVidController;
  late Future<void> initializeVideoPlayer;

  @override
  void initState() {
    myVidController = VideoPlayerController.network(videoLink);
    initializeVideoPlayer = myVidController.initialize();
    myVidController.setLooping(true);
    myVidController.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    myVidController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text("2Ter Hub"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.black,
            height: 350,
            child: FutureBuilder(
              future: initializeVideoPlayer,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Container(
                    color: Colors.black,
                    child: VideoPlayer(myVidController),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Question ${questionNum}",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    if (speed > 1) speed--;
                    myVidController.setPlaybackSpeed(speed);
                  },
                  child: Icon(
                    Icons.fast_rewind_rounded,
                    size: 40,
                  ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    print("tapped");
                    if (myVidController.value.isPlaying) {
                      setState(() {
                        myVidController.pause();
                        ;
                      });
                    } else {
                      setState(() {
                        myVidController.play();
                      });
                    }
                  },
                  child: myVidController.value.isPlaying
                      ? Icon(
                          Icons.pause_circle_outline_outlined,
                          size: 50,
                        )
                      : Icon(
                          Icons.play_circle_outline_outlined,
                          size: 50,
                        ),
                ),
                SizedBox(width: 20),
                GestureDetector(
                  onTap: () {
                    speed++;
                    myVidController.setPlaybackSpeed(speed);
                  },
                  child: Icon(
                    Icons.fast_forward_rounded,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                );
              },
              itemCount: widget.links.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      questionNum = index + 1;
                      videoLink = widget.links[index];
                    });
                    initState();
                  },
                  title: Text("Question ${index + 1}"),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
