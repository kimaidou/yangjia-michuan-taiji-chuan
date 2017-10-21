cd /some/folder/
ffmpeg -i "*.mp4" -vf fps=1/4 extraction/out%04d.png
ls extraction/*.png | sed 's#extraction#<img src="extraction#g' | sed 's#png#png">#g' > index.html
