video: 
	ffmpeg -i out.mkv -filter_complex loop=loop=-1:size=32767 -s 1280x720 -f v4l2 -vcodec rawvideo -pix_fmt rgb24 /dev/video2
