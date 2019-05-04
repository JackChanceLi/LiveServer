#!/bin/bash
for((;;))
do
	./objs/ffmpeg/bin/ffmpeg -re -i ./objs/nginx/html/vrvideo.mp4 -vcodec copy -acodec copy -f flv -y rtmp:localhost:1935/live360/1458248448;
	sleep 1;
done
