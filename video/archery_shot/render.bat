echo off
REM this renders my archery video
set mytar=./video_input/video0_original.tar.gz.
set myvideo=./video_input/video0_original.MOV

REM this is how i compressed the video file in small chunks
tar cvzf - %myvideo% | split --bytes=64MB - %mytar%
echo  .
REM echo De-compressing the video file
REM cat %mytar% | tar xzvf -

echo  .
echo press enter to exit
PAUSE