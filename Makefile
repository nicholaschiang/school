video: 
	ffmpeg -re -stream_loop -1 -i out.mkv -filter:v "setpts=1.0*PTS" -f v4l2 -vcodec rawvideo -pix_fmt rgb24 /dev/video2	
