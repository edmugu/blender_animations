echo off
REM this renders my archery video
set mytar=./tmp/video0_original.tar.gz.*
set myvideo=./tmp/video0_original.MOV

REM this is how i compressed the video file in small chunks
REM tar cvzf - %myvideo% | split --bytes=64MB - ./tmp/video0_original.tar.gz.
echo  .
echo De-compressing the video file
cat %mytar% | tar xzvf -

echo  .
echo press enter to exit
PAUSE