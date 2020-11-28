live:
	gphoto2 --stdout --capture-movie | ffmpeg -i - -vcodec rawvideo -pix_fmt yuv420p -threads 0 -f v4l2 /dev/video0
loop: 
	ffmpeg -re -stream_loop -1 -i out.mkv -filter:v "setpts=1.0*PTS" -f v4l2 -vcodec rawvideo -pix_fmt rgb24 /dev/video2
proxy:
	google-chrome --proxy-server="socks5://127.0.0.1:8888" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE 127.0.0.1"
