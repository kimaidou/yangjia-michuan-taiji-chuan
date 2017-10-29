cd /some/folder/

# découper
ffmpeg -i video.mp4 -vf "crop=400:300:120:30" 1.mp4

# extraire
ffmpeg -i "1.mp4" -vf fps=1/2 extraction/out%04d.jpg

# html
ls extraction/*.jpg | sed 's#extraction#<img style="width:170px" src="extraction#g' | sed 's#jpg#jpg">#g' > index.html

# pdf
ulimit -n 1024
wkhtmltopdf --margin-left 5.0 --margin-right 5.0 --margin-top 5.0 --margin-bottom 2.0 index.html index.pdf
