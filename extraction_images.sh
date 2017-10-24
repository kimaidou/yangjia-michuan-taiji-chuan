cd /some/folder/

# découper
ffmpeg -i 2°\ duan-1°part-Yangjia\ Michuan\ Taiji\ Quan.mp4 -vf "crop=400:300:120:30" test.mp4

# extraire
ffmpeg -i "*.mp4" -vf fps=1/4 extraction/out%04d.png

# html
ls extraction/*.png | sed 's#extraction#<img style="width:300px" src="extraction#g' | sed 's#png#png">#g' > index.html

# pdf
wkhtmltopdf --margin-left 5.0 --margin-right 5.0 --margin-top 2.0 --margin-bottom 2.0 index.html index.pdf
