echo off
REM this renders my archery video
set mytar=./video_input/video0_original.tar.gz.
set myvideo=./video_input/video0_original.MOV

REM this is how i compressed the video file in small chunks
REM tar cvzf - %myvideo% | split --bytes=64MB - %mytar%

echo  .
echo De-compressing the video file
cat ./video_input/video0_original.tar.gz.* | tar xzvf -

if not exist "./tmp/video1_speed_up.mp4" (
	echo  .
	echo Render video1
	blender -b video1_speed_up.blend -a
   
)

if not exist "./tmp/video2_zoom.mp4" (
	echo  .
	echo Render video2
	blender -b video2_zoom.blend -a
   
)
echo  .
echo press enter to exit
PAUSE