#! /bin/bash
echo 'Enter a name for the recording'
read name


ffmpeg -f pulse -ac 2 -i default -f x11grab -r 30 -s 1920x1080 -i :0.0 -acodec pcm_s16le -vcodec libx264 -preset ultrafast -threads 0 -y ~/ffmpeg/videos/${name}.mkv

