"C:\Projects\Github\blender_animations\video\archery_shot\video_input\video0_original.MOV"
REM this renders my archery video
set mytar=./video_input/video0_original.tar.gz.
set myvideo=./video_input/video0_original.MOV

REM this is how i compressed the video file in small chunks
REM tar cvzf - %myvideo% | split --bytes=64MB - %mytar%

echo  .
echo De-compressing the video file
cat ./video_input/video0_original.tar.gz.* | tar xzvf -

echo  .
echo press enter to exit
PAUSE